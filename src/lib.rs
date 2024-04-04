pub fn add_positive(a: i32, b: i32) -> i32 {
    let result = if a < 0 {0}
    else {a + b};
    result
}


#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn test_add() {
        assert_eq!(add_positive(1, 2), 3);
    }

    #[test]
    fn test_add_negative() {
        assert_eq!(add_positive(-1,2), 0);
    }

}