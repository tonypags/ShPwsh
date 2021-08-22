Describe 'ShPwsh Tests' {

    Import-Module "ShPwsh" -ea 0 -Force

    Context 'Test Module import' {

        It 'Module is imported' {
            $Valid = Get-Module -Name 'ShPwsh'
            $Valid.Name | Should -Be 'ShPwsh'
        }

    }

    Context 'Test ShPwsh Functions' {

        It 'Replaces underscores' {
            $Valid = 'Some_String Maybe-a_few' | Rename-UnderScore
            $Valid | Should -Be 'Some String Maybe-a few'
        }

    }

}
