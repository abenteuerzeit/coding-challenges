# https://www.codewars.com/kata/559e3224324a2b6e66000046/powershell


function sumin($n) {
    [math]::Floor($n * ($n + 1) * (2 * $n + 1) / 6)
}


function sumax($n) {
    [math]::Floor($n * ($n + 1) * (4 * $n - 1) / 6)
}


function sumsum($n) {
    [math]::Floor($n * $n * ($n + 1))
}

