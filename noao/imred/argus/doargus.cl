# DOARGUS -- Process ARGUS spectra from 2D to wavelength calibrated 1D.
#
# The task PROC does all of the interactive work and BATCH does the
# background work.  This procedure is organized this way to minimize the
# dictionary space when the background task is submitted.

procedure doargus (objects)

string	objects = ""		{prompt="List of object spectra"}

file	apref = ""		{prompt="Aperture reference spectrum"}
file	flat = ""		{prompt="Flat field spectrum"}
file	throughput = ""		{prompt="Throughput file or image (optional)"}
string	arcs1 = ""		{prompt="List of arc spectra"}
string	arcs2 = ""		{prompt="List of shift arc spectra"}
file	arctable = ""		{prompt="Arc assignment table (optional)\n"}

string	readnoise = "0."	{prompt="Read out noise sigma (photons)"}
string	gain = "1."		{prompt="Photon gain (photons/data number)"}
real	datamax = INDEF		{prompt="Max data value / cosmic ray threshold"}
int	fibers = 48		{prompt="Number of fibers"}
real	width = 6.		{prompt="Width of profiles (pixels)"}
real	minsep = 8.	{prompt="Minimum separation between fibers (pixels)"}
real	maxsep = 10.	{prompt="Maximum separation between fibers (pixels)"}
file	apidtable = ""		{prompt="Aperture identifications"}
string	crval = "INDEF"		{prompt="Approximate central wavelength"}
string	cdelt = "INDEF"		{prompt="Approximate dispersion"}
string	objaps = ""		{prompt="Object apertures"}
string	skyaps = "2x2"		{prompt="Sky apertures"}
string	objbeams = ""		{prompt="Object beam numbers"}
string	skybeams = ""		{prompt="Sky beam numbers\n"}

bool	scattered = no		{prompt="Subtract scattered light?"}
bool	fitflat = yes		{prompt="Fit and ratio flat field spectrum?"}
bool	clean = yes		{prompt="Detect and replace bad pixels?"}
bool	dispcor = yes		{prompt="Dispersion correct spectra?"}
bool	skyalign = no		{prompt="Align sky lines?"}
bool	skysubtract = yes	{prompt="Subtract sky?"}
bool	skyedit = yes		{prompt="Edit the sky spectra?"}
bool	saveskys = yes		{prompt="Save sky spectra?"}
bool	splot = no		{prompt="Plot the final spectrum?"}
bool	redo = no		{prompt="Redo operations if previously done?"}
bool	update = yes		{prompt="Update spectra if cal data changes?"}
bool	batch = no		{prompt="Extract objects in batch?"}
bool	listonly = no		{prompt="List steps but don't process?\n"}

pset	params = ""		{prompt="Algorithm parameters"}

begin
	apscript.readnoise = readnoise
	apscript.gain = gain
	apscript.nfind = fibers
	apscript.width = width
	apscript.t_width = width
	apscript.minsep = minsep
	apscript.maxsep = maxsep
	apscript.radius = minsep
	apscript.clean = clean
	proc.datamax = datamax

	proc (objects, apref, flat, throughput, arcs1, arcs2, "",
	    arctable, fibers, apidtable, crval, cdelt, objaps, skyaps, "",
	    objbeams, skybeams, "", scattered, fitflat, no, no, no, no,
	    clean, dispcor, no, skyalign, skysubtract, skyedit, saveskys,
	    splot, redo, update, batch, listonly)

	if (proc.dobatch) {
	    print ("-- Do remaining spectra as a batch job --")
	    print ("batch&batch") | cl
	}
end
