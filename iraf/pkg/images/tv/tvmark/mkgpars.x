include <ctype.h>
include "tvmark.h"

# MK_GPARS -- Fetch the parameters required for the imark task from the cl.

procedure mk_gpars (mk)

pointer	mk		# pointer to the immark structure

size_t	sz_val
int	mark, dotsize, ip
pointer	sp, str
real	ratio
bool	clgetb()
int	clgwrd(), clgeti(), nscan(), btoi(), mk_stati(), imod()
long	clgetl()
real	clgetr()

begin
	# Allocate working space.
	call smark (sp)
	sz_val = SZ_LINE
	call salloc (str, sz_val, TY_CHAR)

	# Initialize the immark structure.
	call mk_init (mk)

	# Get the mark parameters.
	mark = clgwrd ("mark", Memc[str], SZ_FNAME, MKTYPELIST)
	if (mark > 0) {
	    call mk_sets (mk, MARK, Memc[str])
	    call mk_seti (mk, MKTYPE, mark)
	} else {
	    call mk_sets (mk, MARK, "point")
	    call mk_seti (mk, MKTYPE, MK_POINT)
	}

	# Get the circles descriptor.
	call clgstr ("radii", Memc[str], SZ_FNAME)
	call mk_sets (mk, CSTRING, Memc[str])

	# Get the rectangles descriptor.
	ip = 1
	call clgstr ("lengths", Memc[str], SZ_LINE)
	call sscan (Memc[str])
	    call gargwrd (Memc[str], SZ_LINE)
	call mk_sets (mk, RSTRING, Memc[str])
	call gargr (ratio)
	if (nscan () < 2 || mk_stati (mk, NRECTANGLES) < 1)
	    call mk_setr (mk, RATIO, 1.0)
	else
	    call mk_setr (mk, RATIO, ratio)

	# Get the rest of the parameters.
	call mk_seti (mk, NUMBER, btoi (clgetb ("number")))
	call mk_seti (mk, LABEL, btoi (clgetb ("label")))
	call mk_seti (mk, SIZE, clgeti ("txsize"))
	dotsize = clgeti ("pointsize")
	if (imod (dotsize, 2) == 0)
	    dotsize = dotsize + 1
	call mk_seti (mk, SZPOINT, dotsize / 2)
	call mk_seti (mk, GRAYLEVEL, clgeti ("color"))
	call mk_setl (mk, NXOFFSET, clgetl ("nxoffset"))
	call mk_setl (mk, NYOFFSET, clgetl ("nyoffset"))
	call mk_setr (mk, TOLERANCE, clgetr ("tolerance"))

	call sfree (sp)
end
