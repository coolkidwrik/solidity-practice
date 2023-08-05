//SPDX-License-Identifier: MIT    
// <----- makes the code easy to share from a legal perspective
pragma solidity ^0.8.18;  // specifies the solidity version that is used in the compilation fo this file
/**
    can specify the verison being used as a range as such:
        If you want to use a version of solidity and any higher version of solidity:
            pragma solidity ^0.8.18;    // useses version 0.8.18 an abover
        If you want to use only a specific version of solidity:
            pragma solidity 0.8.18;  // only version 0.8.18
        If you want solidity versions between a certain range, then:
            pragma solidity >=0.8.18< 0.9.0;  // any version between 0.8.18 and 0.9.0
*/


contract SimpleStrorage {
    /**
        types of primitive data that can be used:
        - boolean    
        - int:
            - uint (unsigned)
            - int (signed)
            can specify number of bits assigned as well. For eg:
                uint8, uint16, uint64, uint 256 (same for int)
            default is uint 256
        - address
        -bytes:
            - similar to in, can specify the number of bits assigned'
    */
    // every type has a default value. eg: int = 0

    // set visibility of the variable to public, private, external or internal (default is internal)
    uint256 private favoritenum; // value set to 0 by default

    function store(uint256 _favNum) public {
        favoritenum = _favNum;
    }

    // keywords to specify that some functions don't have to run or don't have to send a transaction to call them
    // these are: view and pure
    // these functions do not modify state of the block chain
    function getFavoriteNum() public view returns(uint256) {
        return favoritenum;
    }


}
