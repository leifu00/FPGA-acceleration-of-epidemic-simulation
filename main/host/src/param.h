#ifndef PARAM_H
#define PARAM_H


struct Param
{
    unsigned short int usVaccTimeToEfficacy;
    double infectiousness[10000], HouseholdDenomLookup[10000];
    double TreatInfDrop, VaccInfDrop;
    unsigned short int usCaseIsolationDelay, usCaseIsolationDuration;
    unsigned short int usHQuarantineHouseDuration, usVaccTimeEfficacySwitch;
    double CaseIsolationHouseEffectiveness;
    double HQuarantineHouseEffect;
    double DCTCaseIsolationHouseEffectiveness;
    double TreatSuscDrop;
    int PlaceTypeNum;
    double PlaceCloseHouseholdRelContact;
    double VaccSuscDrop2, VaccSuscDrop;
    double EnhancedSocDistHouseholdEffectCurrent;
    double SocDistHouseholdEffectCurrent;
    double WAIFW_Matrix[17][17];
    double AgeSusceptibility[17];
    double FalsePositiveRate;
};


#endif