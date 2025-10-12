/*
 * Copyright (C) 2023 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "RestrictedCurrent.h"

namespace vendor {
namespace lineage {
namespace fastcharge {
namespace V1_0 {
namespace implementation {

using ::android::hardware::Status;
constexpr auto EX_UNSUPPORTED_OPERATION = ::android::hardware::Status::EX_UNSUPPORTED_OPERATION;

/*
 * Get the restricted current value from the corresponding sysnode
 */
Return<int32_t> RestrictedCurrent::getRestrictedCurrent() {
    return Status::fromExceptionCode(EX_UNSUPPORTED_OPERATION);
}

/*
 * Set the maximum allowed current (restricted current), when fast charging is disabled
 */
Return<bool> RestrictedCurrent::setRestrictedCurrent(int32_t /*current_mA*/) {
    return Status::fromExceptionCode(EX_UNSUPPORTED_OPERATION);
}

/*
 * Get the maximum supported current
 */
Return<int32_t> RestrictedCurrent::getMaxSupportedCurrent() {
    return Status::fromExceptionCode(EX_UNSUPPORTED_OPERATION);
}

} // namespace implementation
} // namespace V1_0
} // namespace fastcharge
} // namespace lineage
} // namespace vendor
