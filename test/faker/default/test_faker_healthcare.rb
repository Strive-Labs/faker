require_relative '../../test_helper'

class TestFakerHealthcare < Test::Unit::TestCase

  def setup
    @tester = Faker::Healthcare
    @icd9 = I18n.translate('faker.healthcare.icd9')
    @icd10 = I18n.translate('faker.healthcare.icd10')
    @icd9_description = I18n.translate('faker.healthcare.icd9_description')
  end

  def test_icd9
    code1 = @tester.icd9
    code2 = @tester.icd9
    assert @icd9.include?(code1)
    assert @icd9.include?(code2)
  end

  def test_icd10
    code1 = @tester.icd10
    code2 = @tester.icd10
    assert @icd10.include?(code1)
    assert @icd10.include?(code2)
  end

  def test_icd9_description
    code1 = @tester.icd9_description
    code2 = @tester.icd9_description
    assert @icd9_description.include?(code1)
    assert @icd9_description.include?(code2)
  end

  def test_doctor
    assert @tester.doctor.match(/(\w+\.? ?){2,3}/)
  end

  def test_npi
    assert @tester.npi.to_s.length == 10
  end

  def test_nurse
    assert @tester.nurse.match(/(\w+\.? ?){2,3}/)
  end

  def test_physical_therapist
    assert @tester.physical_therapist.match(/(\w+\.? ?){2,3}/)
  end

  def test_hospital
    assert @tester.hospital.match(/[A-Z][a-z]+\.?/)
  end

  def test_body_part
    assert @tester.body_part.match(/[A-Z][a-z]+\.?/)
  end

  def test_insurance_provider
    assert @tester.insurance_provider.match(/[A-Z][a-z]+\.?/)
  end

  def test_board_certification
    assert @tester.board_certification.match(/[A-Z][a-z]+\.?/)
  end

  def test_hl7_adt_a01
    assert @tester.hl7_adt_a01.include? 'PID'
    assert @tester.hl7_adt_a01.include? 'PV1'
    assert @tester.hl7_adt_a01.include? 'EVN'
    assert @tester.hl7_adt_a01.include? 'MSH'
    assert @tester.hl7_adt_a01.include? 'NK1'
  end

  def test_orthopedics
    assert @tester.orthopedics.match(/[A-Z][a-z]+\.?/)
  end

  def test_pharmaceutical
    assert @tester.pharmaceutical.match(/[A-Z][a-z]+\.?/)
  end

  def test_pt_clinic
    assert @tester.hospital.match(/[A-Z][a-z]+\.?/)
  end

  def test_degrees_and_licenses
    assert @tester.degrees_and_licenses.match(/[A-Z]*\.?/)
  end
end
