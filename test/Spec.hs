import SortArray
import Test.Hspec

main =
  hspec
    $ describe "The sortArray function"
    $ it "should work for some examples"
    $ do
        sortArray [3, 2, 8, 5] `shouldBe` [3, 2, 8, 5]
        sortArray [5, 3, 2, 8, 1, 4] `shouldBe` [1, 3, 2, 8, 5, 4]
        sortArray [5, 7, 2, 8, 1, 4] `shouldBe` [1, 5, 2, 8, 7, 4]
        sortArray [5, 3, 1, 8, 0] `shouldBe` [1, 3, 5, 8, 0]
        sortArray [2,22,11,1,4,5,37,0] `shouldBe` [2,22,1,5,4,11,37,0]
        sortArray [3,1,15,3] `shouldBe` [1,3,3,15]
        sortArray [] `shouldBe` []
