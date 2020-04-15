// Copyright (C) 2020 Zerion Inc. <https://zerion.io>
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program. If not, see <https://www.gnu.org/licenses/>.

pragma solidity 0.6.6;
pragma experimental ABIEncoderV2;

import { ERC20 } from "../../ERC20.sol";
import { ProtocolAdapter } from "../ProtocolAdapter.sol";


/**
 * @title Adapter for Curve protocol.
 * @dev Implementation of ProtocolAdapter interface.
 * @author Igor Sobolev <sobolev@zerion.io>
 */
contract CurveAdapter is ProtocolAdapter {

    bytes32 public constant override adapterType = "Asset";

    bytes32 public constant override tokenType = "Curve pool token";

    /**
     * @return Amount of Curve pool tokens held by the given account.
     * @param token Address of the pool token!
     * @dev Implementation of ProtocolAdapter interface function.
     */
    function getBalance(address token, address account) public view override returns (uint256) {
        return ERC20(token).balanceOf(account);
    }
}
