(*
  Copyright 2016, MARS-Curiosity - REST Library

  Home: https://github.com/andrea-magni/MARS
*)
unit Server.Resources;

interface

uses
  SysUtils, Classes

  , MARS.Core.Attributes
  , MARS.Core.MediaType
  , MARS.Core.JSON
  ;

type
  [Path('helloworld')]
  THelloWorldResource = class
  public
    [GET, Produces(TMediaType.TEXT_PLAIN)]
    function SayHelloWorld: string;
  end;

implementation

uses
    MARS.Core.Registry
  ;


{ THelloWorldResource }


function THelloWorldResource.SayHelloWorld: string;
begin
  Result := 'Hello World!';
end;

initialization
  TMARSResourceRegistry.Instance.RegisterResource<THelloWorldResource>;


end.
