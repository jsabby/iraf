include <math/nlfit.h>
include "nlfitdefr.h"

# NLSOLVE -- Procedure to solve nonlinear system

procedure nlsolver (nl, ier)

pointer	nl	# pointer to the nlfit structure
int	ier	# error code

long	nfree
size_t	sz_val

begin
	# Make temporary arrays.
	sz_val = NL_NFPARAMS(nl) ** 2
	call amovr (ALPHA(NL_ALPHA(nl)), COVAR(NL_COVAR(nl)), sz_val)
	sz_val = NL_NFPARAMS(nl)
	call amovr (BETA(NL_BETA(nl)), DPARAM(NL_DPARAM(nl)), sz_val)

	# Add the lambda damping factor.
	call nl_dampr (COVAR(NL_COVAR(nl)), COVAR(NL_COVAR(nl)),
	    (1.0 + NL_LAMBDA(nl)), NL_NFPARAMS(nl), NL_NFPARAMS(nl))

	ier = OK
	nfree = NL_NPTS(nl) - NL_NFPARAMS(nl)
	if (nfree < 0) {
	    ier = NO_DEG_FREEDOM
	    return
	}

	# Compute the factorization of the matrix.
	call nl_chfacr (COVAR(NL_COVAR(nl)), NL_NFPARAMS(nl), NL_NFPARAMS(nl),
	    CHOFAC(NL_CHOFAC(nl)), ier)

	# Solve the equations for the parameter increments.
	call nl_chslvr (CHOFAC(NL_CHOFAC(nl)), NL_NFPARAMS(nl), NL_NFPARAMS(nl),
	    DPARAM(NL_DPARAM(nl)), DPARAM(NL_DPARAM(nl)))
end
