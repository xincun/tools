
  *******************************************************\
  *                                                      *
  *               Exeinfo PE ver.0.0.3.8                 *
  *                                                      *
  *               with 860 + 4 signatures                *
  *                                                      *
  *              Ext_detector.dll v.2.8.8                *
  *                                                      *
  *                 www.exeinfo.xn.pl                    *
  *                                                      *
  *                2015.05.21 by A.S.L                   *
  *                                                      *
  *                 freeware version                     *
  *                                                      *
  *                for Windows 32 bit                    *
  *                                                      *
  \*******************************************************




        Executable and data file detector.

         for : Win PE , Mac OS , Linux ELF , ... 

	* Include user languages : neutral , Chinese Big5

        Internal : disassembler , data / archives Ripper , 
                   Zlib unpacker v1.2.8 , DFM Form scanner ,
                   Overlay tool , Compiler detector , 
                   Section Cafe finder
                   and others tools ....

        * Plugin : advanced_scan.dll (AV fixed) + 4493 sign ( Peid compatible )


        * Skins ( 12 jpg files )

        * 1 sample Script for patch create

 
        INFO : For 64bit PE files 

        Exeinfo PE support only : 1. UPX exe , 2. UPX dll, 3. UPX res, 4. MPRESS x64 (exe/dll)



	NEWS : 
         - more inteli detection for unpacked exe
         - signatures updated to new version protectors/compilers
         - many non exe detection added : .apng , .apw , .key , .res , .dxa , .TS , ,k2p ...
         - detect : Delphi 2014 XE7
         - Windows-10 added OS Version - exe Header GUI
         - MSI Ripper added ripper for Xor-ed with FF byte
         - Zip Ripper added [ Continue - if 20/40/65/100 files ripped ]      
         - many signatures and fixes , overlay crypted CAB detector
         - unpack info and version : updated
         - .NET PE - added : Save to file Meta Data Streams ( #~ , #Streams , #US ... )
         - Pe Header added : Button for Load Config
         - Two internal skin changed II,III
         - for DLL files Generic detector : compresor/decompressor library  (zlib dll,lzma decompres)
         - for DLL files Generic detector : Lzma packer/depacker library
         - for DLL files detect Xojo compiler Library
         - more infos if External detector not found ( .NET Menu )
         - many fixes and more



        External module used :

      + disassembler - www.beaengine.org
      + zlib         - www.base2ti.com
      + DCPCrypt2    - www.cityinthesky.co.uk by David Barton 


      License status : Freeware for personal use ( copy / distribute )


      * Tested AV false detection for Trojan - 1 detected : HW32.Packed.39AC 



                   A.S.L (c) 2015.05.21




