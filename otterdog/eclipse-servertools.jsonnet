local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-servertools') {
  settings+: {
    description: "",
    name: "Eclipse Server Tools",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('servertools') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      has_wiki: false,
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
    },
  ],
}
