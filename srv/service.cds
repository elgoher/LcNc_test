using { MyProject as my } from '../db/schema';

using MyProject from '../db/schema';

service LcNc_testService
{
}

@path : 'service/MyProject'
service MyProjectService
{
    entity Capex as
        projection on my.capex;

    entity CapexItems as
        projection on my.capexitems;
}

annotate MyProjectService with @requires :
[
    'authenticated-user'
];
