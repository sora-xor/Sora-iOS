/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache 2.0
*/

import Foundation
import RobinHood

protocol ProjectFundingOperationFactoryProtocol {
    func fetchProjectsOperation(_ urlTemplate: String, pagination: OffsetPagination) -> NetworkOperation<[ProjectData]>
    func fetchReferendumsOperation(_ urlTemplate: String) -> NetworkOperation<[ReferendumData]>
    func fetchProjectDetailsOperation(_ urlTemplate: String, projectId: String) -> NetworkOperation<ProjectDetailsData?>
    func fetchReferendumDetailsOperation(_ urlTemplate: String,
                                         referendumId: String) -> NetworkOperation<ReferendumData?>
    func toggleFavoriteOperation(_ urlTemplate: String, projectId: String) -> NetworkOperation<Bool>
    func voteOperation(_ urlTemplate: String, vote: ProjectVote) -> NetworkOperation<Bool>
    func voteInReferendumOperation(_ urlTemplate: String, vote: ReferendumVote) -> NetworkOperation<Void>
    func fetchVotesOperation(_ urlTemplate: String) -> NetworkOperation<VotesData?>
    func fetchVotesHistory(_ urlTemplate: String, with info: OffsetPagination)
        -> NetworkOperation<[VotesHistoryEventData]?>
}

protocol ProjectAccountOperationFactoryProtocol {
    func registrationOperation(_ urlTemplate: String, with info: RegistrationInfo) -> NetworkOperation<Bool>
    func createUserOperation(_ urlTemplate: String,
                             with info: UserCreationInfo) -> NetworkOperation<VerificationCodeData>
    func fetchCustomerOperation(_ urlTemplate: String) -> NetworkOperation<UserData?>
    func updateCustomerOperation(_ urlTemplate: String, info: PersonalInfo) -> NetworkOperation<Bool>
    func applyInvitationCodeOperation(_ urlTemplate: String, code: String) -> NetworkOperation<Void>
    func checkInvitation(_ urlTemplate: String, deviceInfo: DeviceInfo) -> NetworkOperation<InvitationCheckData>
    func fetchActivatedInvitationsOperation(_ urlTemplate: String) -> NetworkOperation<ActivatedInvitationsData?>
    func fetchReputationOperation(_ urlTemplate: String) -> NetworkOperation<ReputationData?>
    func fetchActivityFeedOperation(_ urlTemplate: String,
                                    with page: OffsetPagination) -> NetworkOperation<ActivityData?>
    func sendSmsCodeOperation(_ urlTemplate: String) -> NetworkOperation<VerificationCodeData>
    func verifySmsCodeOperation(_ urlTemplate: String, info: VerificationCodeInfo) -> NetworkOperation<Bool>
}

protocol ProjectInformationOperationFactoryProtocol {
    func fetchAnnouncementOperation(_ urlTemplate: String) -> NetworkOperation<AnnouncementData?>
    func fetchHelpOperation(_ urlTemplate: String) -> NetworkOperation<HelpData?>
    func fetchReputationDetailsOperation(_ urlTemplate: String) -> NetworkOperation<ReputationDetailsData?>
    func fetchCurrencyOperation(_ urlTemplate: String) -> NetworkOperation<CurrencyData?>
    func checkSupportedVersionOperation(_ urlTemplate: String,
                                        version: String) -> NetworkOperation<SupportedVersionData>
    func fetchCountryOperation(_ urlTemplate: String) -> NetworkOperation<CountryData?>
    func fetchEthConfigOperation(_ urlTemplate: String) -> NetworkOperation<EthNodeData?>
}

final class ProjectOperationFactory {}
