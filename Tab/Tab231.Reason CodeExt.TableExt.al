tableextension 50249 tableextension50249 extends "Reason Code"
{
    fields
    {
        field(50006; Yes; Boolean)
        {
        }
        field(50007; o; Option)
        {
            OptionMembers = " ",Brands;
        }
        field(50300; "In Use"; Boolean)
        {
            InitValue = true;
        }
        field(50301; Type; Option)
        {
            OptionMembers = " ",Brands,"Item Jl",Import,Usage;
        }
    }
}

