function Rename-Underscore {
    <#
    .SYNOPSIS
    Replaces underscores in strings.
    .DESCRIPTION
    Replaces underscores in strings.
    .EXAMPLE
    PS > 'Some_String Maybe-a_few' | Rename-UnderScore
    'Some String Maybe-a few'
    #>
    [CmdletBinding()]
    param(
        [Parameter(ValueFromPipeline)]
        [string]
        $String,

        [Parameter()]
        [AllowNull()]
        [string]
        $Replace = ' '
    )

    $String -replace '_', $Replace

}#END: function Rename-Underscore {}
