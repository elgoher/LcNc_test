namespace MyProject;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity capex
{
    key ID : UUID
        @Core.Computed;
    description : String;
    capexitems : Association to many capexitems on capexitems.capex = $self;
}

entity capexitems
{
    key position : Integer;
    position_cost : Integer;
    description : String;
    capex : Association to one capex;
    key ID : UUID
        @Core.Computed;
}
