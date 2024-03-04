module Faker
  class Healthcare < Base
    flexible :healthcare

    class << self
      def hospital
        parse('healthcare.hospital')
      end

      def pt_clinic
        parse('healthcare.pt_clinic')
      end

      def icd9
        fetch('healthcare.icd9')
      end

      def icd10
        fetch('healthcare.icd10')
      end

      def body_part
        fetch('healthcare.body_part')
      end

      def pharmaceutical
        fetch('healthcare.pharmaceutical')
      end

      def doctor
        parse('healthcare.doctor')
      end

      def npi
        rand(1000000000..9999999999)
      end

      def nurse
        parse('healthcare.nurse')
      end

      def physical_therapist
        parse('healthcare.physical_therapist')
      end

      def board_certification
        fetch('healthcare.board_cert')
      end

      def orthopedics
        fetch('healthcare.orthopedics')
      end

      def insurance_provider
        fetch('healthcare.insurance_provider')
      end

      def degrees_and_licenses
        fetch('healthcare.degrees_and_licenses')
      end

      def hl7_adt_a01
        msh + "\n" + evn + "\n#{pid.upcase}\n#{nk1.upcase}\n#{pv1.upcase}"
      end

      def pid
        'PID|||MRN12345^5^M11||' + "#{Name.last_name}" + '^' +
        "#{Name.first_name}" + '^A^III||19710101|M||C|1^' +
        "#{Address.street_name}" + '^^' + "#{Address.city}" +
        '^' "#{Address.state_abbr}" +
        '^53005-1020|GL|(414)379-1212|(414)271-3434||S||MRN12345001^2^M10|123456789|987654^NC|'
      end

      def msh
        'MSH|^~\&|EPICADT|DH|LABADT|DH|201301011226||ADT^A01|HL7MSG00001|P|2.3|'
      end

      def evn
        'EVN|A01|201301011223||'
      end

      def pv1
        'PV1|1|I|2000^2012^01||||004777^' + "#{Name.last_name}" + '^' + "#{Name.first_name}" + '^J.|||SUR||||ADM|A0|'
      end

      def nk1
        "NK1|1|#{Name.last_name}" + '^' + "#{Name.first_name}" + '^J|WIFE||||||NK^NEXT OF KIN'
      end
    end
  end
end
