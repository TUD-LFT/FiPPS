!
!  This program developed in FORTRAN is a Finite Element solver for linear-
!  static analyses as well as linearized stability analyses. It is inherently
!  coupled to the open-source panel method APAME for providing fluid-structure-
!  interaction capabilites.
!    
!  Copyright (C) 2024 TUD Dresden University of Technology
! 
!  This file is part of FiPPS².
!
!  FiPPS² is free software: you can redistribute it and/or modify
!  it under the terms of the GNU General Public License as published by
!  the Free Software Foundation, either version 3 of the License, or
!  (at your option) any later version.
!
!  FiPPS² is distributed in the hope that it will be useful,
!  but WITHOUT ANY WARRANTY; without even the implied warranty of
!  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
!  GNU General Public License for more details.
!
! =================================================================================================
!
!> @brief
!
!> @details
!
!> @author
!
!> $Id: last_typen.f90 383 2018-11-02 08:07:44Z DOM+ahauffe $
!> $Author: DOM+ahauffe $
!> $Revision: 383 $
!> $Date: 2018-11-02 09:07:44 +0100 (Fr, 02. Nov 2018) $
!
! =================================================================================================
module ergebnis_typen

  implicit none
  
type ergebnis_type
  double precision              :: tse              ! Total Strain Energy
end type ergebnis_type

!
! =================================================================================================

contains

! =================================================================================================
!
!> @brief
!
!> @details
!
!> @author 
!
! =================================================================================================

  subroutine bcast_ergebnisse(ergbnisse)
    
#include "petsc/finclude/petscsys.h"
    use petscsys
    
    implicit none

    type(ergebnis_type) :: ergbnisse
    
  end subroutine bcast_ergebnisse
  
  subroutine free_mem_ergebnisse(ergbnisse)
  
    implicit none

    type(ergebnis_type) :: ergbnisse

  end subroutine free_mem_ergebnisse
  
end module ergebnis_typen
