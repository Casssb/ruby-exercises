def rot13(message)
    message.tr("aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ",
     "nNoOpPqQrRsStTuUvVwWxXyYzZaAbBcCdDeEfFgGhHiIjJkKlLmM")
end
=begin after checking the other solutions I now realise I could have
 just filled out the capture groups with a-zA-Z d'oh! =end

=begin  Test.expect(rot13("EBG13 rknzcyr.") == "ROT13 example.")
Test.expect(rot13("How can you tell an extrovert from an\nintrovert at NSA? Va gur ryringbef,\ngur rkgebireg ybbxf ng gur BGURE thl'f fubrf.") == "Ubj pna lbh gryy na rkgebireg sebz na\nvagebireg ng AFN? In the elevators,\nthe extrovert looks at the OTHER guy's shoes.")
Test.expect(rot13("123") == "123")
Test.expect(rot13("Guvf vf npghnyyl gur svefg xngn V rire znqr. Gunaxf sbe svavfuvat vg! :)") == "This is actually the first kata I ever made. Thanks for finishing it! :)")
Test.expect(rot13("@[`{") == "@[`{") =end