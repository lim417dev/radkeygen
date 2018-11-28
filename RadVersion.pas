unit RadVersion;

interface

uses Windows, Classes, SysUtils;

type
    TPatchInfo = record
        Crc: DWORD;
        Sha1: string;
        PatchOffset: DWORD;
        FinalizeArrayOffset: DWORD;
    end;

    TRadStudioVersion = record
        Name: string; // Rad Studio 10.2 Tokyo Update2
        Ver: string; // 25.0.29039.2004
        BDSVersion: string; // 19.0
        LicVerStr: string; // 10.2 Tokyo
        LicHostPID: Integer; // 8219
        LicHostSKU: Integer; // 52
        LicDelphiPID: string; // 2025
        LicCBuilderPID: string; // 4022
        BdsPatchInfo: TPatchInfo;
        LicenseManagerPatchInfo: TPatchInfo;
        mOasisRuntimePatchInfo: TPatchInfo;
        SetupGUID: string;
        ISOUrl: string;
        ISOMd5: string;
    end;

    PRadStudioVersion = ^TRadStudioVersion;

var
    RadStudioVersionList: TStringList;

implementation

procedure InitRadStudioVersion(VerList: TStringList);
var
    RadStudioVersion: PRadStudioVersion;
begin
    New(RadStudioVersion);
    with RadStudioVersion^ do
    begin
        Name := 'Rad Studio 10.2.3 Tokyo 2631';
        Ver := '25.0.29899.2631';
        BDSVersion := '19.0';
        LicVerStr := '10.2 Tokyo';
        LicHostPID := 8219;
        LicHostSKU := 52;
        LicDelphiPID := '2025';
        LicCBuilderPID := '4022';
        BdsPatchInfo.Crc := $3D387FC1;
        BdsPatchInfo.Sha1 := '111eeb9c9061b1e125318799d1b6de83ce9d2499';
        BdsPatchInfo.PatchOffset := $1E92D;
        BdsPatchInfo.FinalizeArrayOffset := $10E100;
        LicenseManagerPatchInfo.Crc := $9F380FEB;
        LicenseManagerPatchInfo.Sha1 :=
          '9e8ad67357cbd2e2a4cc851fc2d582f7f89882ea';
        LicenseManagerPatchInfo.PatchOffset := $1E4939;
        LicenseManagerPatchInfo.FinalizeArrayOffset := $607828;
        mOasisRuntimePatchInfo.Sha1 :=
          '30dc7ee5931b2f88904c60b5469144673bc544a8';
        mOasisRuntimePatchInfo.PatchOffset := $166F85;
        SetupGUID := '{426F14E1-A160-430C-A48D-E84ED4F49171}';
        ISOUrl := 'http://altd.embarcadero.com/download/radstudio/10.2/delphicbuilder10_2_3_2631.iso';
        ISOMd5 := '1bd28e95596ffed061e57e28e155666d';
    end;
    VerList.AddObject(RadStudioVersion^.Name, TObject(RadStudioVersion));

    New(RadStudioVersion); // thanks tonzi (from 2ccc.com)! 2018/7/23
    with RadStudioVersion^ do
    begin
        Name := 'Rad Studio 10.2.3 Tokyo 3231';
        Ver := '25.0.31059.3231';
        BDSVersion := '19.0';
        LicVerStr := '10.2 Tokyo';
        LicHostPID := 8219;
        LicHostSKU := 52;
        LicDelphiPID := '2025';
        LicCBuilderPID := '4022';
        BdsPatchInfo.Crc := $CE8FA21E;
        BdsPatchInfo.Sha1 := '8daa98dbc558ec81cf582ec8c71233d9ab5fb76a';
        BdsPatchInfo.PatchOffset := $1E95D;
        BdsPatchInfo.FinalizeArrayOffset := $111268;
        LicenseManagerPatchInfo.Crc := $1127F753;
        LicenseManagerPatchInfo.Sha1 :=
          '485dcb165cdefe3f3e50090bf8cfafb8bca5b46f';
        LicenseManagerPatchInfo.PatchOffset := $1E4939;
        LicenseManagerPatchInfo.FinalizeArrayOffset := $607828;
        mOasisRuntimePatchInfo.Sha1 :=
          '30dc7ee5931b2f88904c60b5469144673bc544a8';
        mOasisRuntimePatchInfo.PatchOffset := $166F85;
        SetupGUID := '{15CEC4B7-6F61-4D40-9491-255657E369A2}';
        ISOUrl := 'http://altd.embarcadero.com/download/radstudio/10.2/delphicbuilder10_2_3__93231.iso';
        ISOMd5 := '40D693B9989F7CCDF07C07EA676D1AB2';
    end;
    VerList.AddObject(RadStudioVersion^.Name, TObject(RadStudioVersion));

    New(RadStudioVersion);
    with RadStudioVersion^ do
    begin
        Name := 'Rad Studio 10.2 Tokyo Update2';
        Ver := '25.0.29039.2004';
        BDSVersion := '19.0';
        LicVerStr := '10.2 Tokyo';
        LicHostPID := 8219;
        LicHostSKU := 52;
        LicDelphiPID := '2025';
        LicCBuilderPID := '4022';
        BdsPatchInfo.Crc := $F7C582B3;
        BdsPatchInfo.Sha1 := '2a93ca97525a9b426ed24250c74f1cecadd29f25';
        BdsPatchInfo.PatchOffset := $1E915;
        BdsPatchInfo.FinalizeArrayOffset := $10E0EC;
        LicenseManagerPatchInfo.Crc := $59A40772;
        LicenseManagerPatchInfo.Sha1 :=
          '7110a5f35a721505395e075e72783d16c4e0f02f';
        LicenseManagerPatchInfo.PatchOffset := $1E47B1;
        LicenseManagerPatchInfo.FinalizeArrayOffset := $6077FC;
        mOasisRuntimePatchInfo.Sha1 :=
          '30dc7ee5931b2f88904c60b5469144673bc544a8';
        mOasisRuntimePatchInfo.PatchOffset := $166F85;
        SetupGUID := '{62610C82-8A7D-4055-B9B4-BB8D34823B3D}';
        ISOUrl := 'http://altd.embarcadero.com/download/radstudio/10.2/delphicbuilder10_2_2_2004.iso';
        ISOMd5 := 'ac1fa2e0e9be86b5118742b782477b61';
    end;
    VerList.AddObject(RadStudioVersion^.Name, TObject(RadStudioVersion));

    New(RadStudioVersion);
    with RadStudioVersion^ do
    begin
        Name := 'Rad Studio 10.2 Tokyo Update1';
        Ver := '25.0.27659.1188';
        BDSVersion := '19.0';
        LicVerStr := '10.2 Tokyo';
        LicHostPID := 8219;
        LicHostSKU := 52;
        LicDelphiPID := '2025';
        LicCBuilderPID := '4022';
        BdsPatchInfo.Crc := $BC350A66;
        BdsPatchInfo.Sha1 := '67a1602a64297743f12758ce74b437f596054e30';
        BdsPatchInfo.PatchOffset := $1E7D9;
        BdsPatchInfo.FinalizeArrayOffset := $10BFFC;
        LicenseManagerPatchInfo.Crc := $0C209F01;
        LicenseManagerPatchInfo.Sha1 :=
          '65b07e3d273a3c1ec0f722266ad73375d02e69a0';
        LicenseManagerPatchInfo.PatchOffset := $001E4435;
        LicenseManagerPatchInfo.FinalizeArrayOffset := $6077D4;
        mOasisRuntimePatchInfo.Sha1 :=
          '39ecf2e1a55c62ba56efd861d7bde7dd83f8551f';
        mOasisRuntimePatchInfo.PatchOffset := $00165FD5;
        SetupGUID := '{157FDBBC-21E6-4B45-A995-CA25BB2864BF}';
        ISOUrl := 'http://altd.embarcadero.com/download/radstudio/10.2/delphicbuilder10_2_1.iso';
        ISOMd5 := '3f7028be8d3831b098102e9bf5732e3b';
    end;
    VerList.AddObject(RadStudioVersion^.Name, TObject(RadStudioVersion));

    New(RadStudioVersion);
    with RadStudioVersion^ do
    begin
        Name := 'Rad Studio 10.2 Tokyo';
        Ver := '25.0.26309.314';
        BDSVersion := '19.0';
        LicVerStr := '10.2 Tokyo';
        LicHostPID := 8219;
        LicHostSKU := 52;
        LicDelphiPID := '2025';
        LicCBuilderPID := '4022';
        BdsPatchInfo.Crc := $23D6BBC6;
        BdsPatchInfo.Sha1 := '6b61fe60e4f806913fdf103e294200d1341089ba';
        BdsPatchInfo.PatchOffset := $1E7D5;
        BdsPatchInfo.FinalizeArrayOffset := $26886C;
        LicenseManagerPatchInfo.Crc := $34D8A9BA;
        LicenseManagerPatchInfo.Sha1 :=
          'a2feb2da6e8b7cc7660ed2b54eec1cad09daeb6c';
        LicenseManagerPatchInfo.PatchOffset := $001E4209;
        LicenseManagerPatchInfo.FinalizeArrayOffset := $660B6C;
        mOasisRuntimePatchInfo.Sha1 :=
          '39ecf2e1a55c62ba56efd861d7bde7dd83f8551f';
        mOasisRuntimePatchInfo.PatchOffset := $00165FD5;
        SetupGUID := '{0556178E-2062-46E3-8FE9-E620C40DB02B}';
        ISOUrl := 'http://altd.embarcadero.com/download/radstudio/10.2/delphicbuilder10_2.iso';
        ISOMd5 := '8855db8d40993c18672f226bf395bfcd';
    end;
    VerList.AddObject(RadStudioVersion^.Name, TObject(RadStudioVersion));

    New(RadStudioVersion);
    with RadStudioVersion^ do
    begin
        Name := 'Rad Studio 10.1 Berlin Update2';
        Ver := '24.0.25048.9432';
        BDSVersion := '18.0';
        LicVerStr := '10.1 Berlin';
        LicHostPID := 8218;
        LicHostSKU := 53;
        LicDelphiPID := '2024';
        LicCBuilderPID := '4021';
        BdsPatchInfo.Crc := $A1315AAB;
        BdsPatchInfo.Sha1 := '9627eeef0574f46f4ec9348b806d30c9c37ad3ed';
        BdsPatchInfo.PatchOffset := $5143D;
        BdsPatchInfo.FinalizeArrayOffset := $264604;
        LicenseManagerPatchInfo.Crc := $9189A95C;
        LicenseManagerPatchInfo.Sha1 :=
          '493ebece2682544c2d6c2bbbdba5b6da70ca73e1';
        LicenseManagerPatchInfo.PatchOffset := $1E82E5;
        LicenseManagerPatchInfo.FinalizeArrayOffset := $671A18;
        mOasisRuntimePatchInfo.Sha1 :=
          '39ecf2e1a55c62ba56efd861d7bde7dd83f8551f';
        mOasisRuntimePatchInfo.PatchOffset := $00165FD5;
        SetupGUID := '{2008E4BD-A356-4759-8A78-18636D2E75C9}';
        ISOUrl := 'http://altd.embarcadero.com/download/radstudio/10.1/radstudio10_1_upd2_esd.iso';
        ISOMd5 := '920f0acf67122bb04ed55edd7a1c7579';
    end;
    VerList.AddObject(RadStudioVersion^.Name, TObject(RadStudioVersion));

    New(RadStudioVersion);
    with RadStudioVersion^ do
    begin
        Name := 'Rad Studio 10.1 Berlin Update1';
        Ver := '24.0.24468.8770';
        BDSVersion := '18.0';
        LicVerStr := '10.1 Berlin';
        LicHostPID := 8218;
        LicHostSKU := 53;
        LicDelphiPID := '2024';
        LicCBuilderPID := '4021';
        BdsPatchInfo.Crc := $9626A6DC;
        BdsPatchInfo.Sha1 := '82d3cd849786f2ece428ab7518ec9ecf47d475e6';
        BdsPatchInfo.PatchOffset := $51449;
        BdsPatchInfo.FinalizeArrayOffset := $264584;
        LicenseManagerPatchInfo.Crc := $3B314A18;
        LicenseManagerPatchInfo.Sha1 :=
          '79b342e41f97728e16c6302e08b44f89b0655a9e';
        LicenseManagerPatchInfo.PatchOffset := $1E8FB5;
        LicenseManagerPatchInfo.FinalizeArrayOffset := $6729E0;
        mOasisRuntimePatchInfo.Sha1 :=
          '7aa466dd1d2c685edd69ee41d1c8ebc1d2b56bb4';
        mOasisRuntimePatchInfo.PatchOffset := $00162CBD;
        SetupGUID := '{37C118B3-EF7F-4110-BFE5-E866FB456C8E}';
        ISOUrl := 'http://altd.embarcadero.com/download/radstudio/10.1/delphicbuilder10_1_upd1.iso';
        ISOMd5 := 'a85a0fba4f8bab121312184cda85c198';
    end;
    VerList.AddObject(RadStudioVersion^.Name, TObject(RadStudioVersion));

    New(RadStudioVersion);
    with RadStudioVersion^ do
    begin
        Name := 'Rad Studio 10.1 Berlin';
        Ver := '24.0.22858.6822';
        BDSVersion := '18.0';
        LicVerStr := '10.1 Berlin';
        LicHostPID := 8218;
        LicHostSKU := 53;
        LicDelphiPID := '2024';
        LicCBuilderPID := '4021';
        BdsPatchInfo.Crc := $1BA3E394;
        BdsPatchInfo.Sha1 := 'a492883335230bced0651338584fbe8c49bd94a8';
        BdsPatchInfo.PatchOffset := $51449;
        BdsPatchInfo.FinalizeArrayOffset := $264584;
        LicenseManagerPatchInfo.Crc := $D2BAA257;
        LicenseManagerPatchInfo.Sha1 :=
          'd0d024b97d02608a505fb0e667dd564b53c91b13';
        LicenseManagerPatchInfo.PatchOffset := $1E9035;
        LicenseManagerPatchInfo.FinalizeArrayOffset := $6719B8;
        mOasisRuntimePatchInfo.Sha1 :=
          '7aa466dd1d2c685edd69ee41d1c8ebc1d2b56bb4';
        mOasisRuntimePatchInfo.PatchOffset := $00162CBD;
        SetupGUID := '{655CBACE-A23C-42B8-B924-A88E80F352B5}';
        ISOUrl := 'http://altd.embarcadero.com/download/radstudio/10.1/delphicbuilder10_1.iso';
        ISOMd5 := '466d2db93e5b3b631eabba69d052b28f';
    end;
    VerList.AddObject(RadStudioVersion^.Name, TObject(RadStudioVersion));

    New(RadStudioVersion);
    with RadStudioVersion^ do
    begin
        Name := 'Rad Studio 10 Seattle Update1';
        Ver := '23.0.21418.4207';
        BDSVersion := '17.0';
        LicVerStr := '10 Seattle';
        LicHostPID := 8217;
        LicHostSKU := 53;
        LicDelphiPID := '2023';
        LicCBuilderPID := '4020';
        BdsPatchInfo.Crc := $B5BD665F;
        BdsPatchInfo.Sha1 := 'e8cc301efc449f90750d921ab73be31d824c08c6';
        BdsPatchInfo.PatchOffset := $4FE51;
        BdsPatchInfo.FinalizeArrayOffset := $225F84;
        LicenseManagerPatchInfo.Crc := $8395454D;
        LicenseManagerPatchInfo.Sha1 :=
          '0ca4640d6c1c2f470ff3182809b881a97e76e534';
        LicenseManagerPatchInfo.PatchOffset := $1CA696;
        LicenseManagerPatchInfo.FinalizeArrayOffset := $6306AC;
        mOasisRuntimePatchInfo.Sha1 :=
          '7aa466dd1d2c685edd69ee41d1c8ebc1d2b56bb4';
        mOasisRuntimePatchInfo.PatchOffset := $00162CBD;
        SetupGUID := '{5D50B637-4756-435A-816E-68ABFE86FC69}';
        ISOUrl := 'http://altd.embarcadero.com/download/radstudio/10/delphicbuilder10___upd1.iso';
        ISOMd5 := '34bf51b0f017541b8521e7efd2b6fbee';
    end;
    VerList.AddObject(RadStudioVersion^.Name, TObject(RadStudioVersion));

    New(RadStudioVersion);
    with RadStudioVersion^ do
    begin
        Name := 'Rad Studio 10 Seattle';
        Ver := '23.0.20618.2753';
        BDSVersion := '17.0';
        LicVerStr := '10 Seattle';
        LicHostPID := 8217;
        LicHostSKU := 53;
        LicDelphiPID := '2023';
        LicCBuilderPID := '4020';
        BdsPatchInfo.Crc := $59176E2B;
        BdsPatchInfo.Sha1 := '0f4255ee60dc860bdcf75c3358d03674757474a5';
        BdsPatchInfo.PatchOffset := $500EA;
        BdsPatchInfo.FinalizeArrayOffset := $225EC8;
        LicenseManagerPatchInfo.Crc := $D06C02B0;
        LicenseManagerPatchInfo.Sha1 :=
          '4ff37906e7283448aecab34c73c8dbe3d45f55a6';
        LicenseManagerPatchInfo.PatchOffset := $1CA98A;
        LicenseManagerPatchInfo.FinalizeArrayOffset := $630634;
        mOasisRuntimePatchInfo.Sha1 :=
          '7aa466dd1d2c685edd69ee41d1c8ebc1d2b56bb4';
        mOasisRuntimePatchInfo.PatchOffset := $00162CBD;
        SetupGUID := '{09FECC13-2950-4AE6-BB23-05C206979F18}';
        ISOUrl := 'http://altd.embarcadero.com/download/radstudio/10/delphicbuilder10.iso';
        ISOMd5 := '9d4bac568aced7f1f82d4a44124fb37c';
    end;
    VerList.AddObject(RadStudioVersion^.Name, TObject(RadStudioVersion));

end;

procedure FinallyRadStudioVersion(VerList: TStringList);
var
    RadStudioVersion: PRadStudioVersion;
begin
    while VerList.Count > 0 do
    begin
        RadStudioVersion := PRadStudioVersion(VerList.Objects[0]);
        if RadStudioVersion <> nil then
            Dispose(RadStudioVersion);
        VerList.Delete(0);
    end;
end;

initialization

RadStudioVersionList := TStringList.Create;
InitRadStudioVersion(RadStudioVersionList);

finalization

FinallyRadStudioVersion(RadStudioVersionList);
FreeAndNil(RadStudioVersionList);

end.
