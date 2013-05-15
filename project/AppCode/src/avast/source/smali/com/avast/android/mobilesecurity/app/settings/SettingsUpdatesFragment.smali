.class public Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "SettingsUpdatesFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private b:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

.field private c:Z

.field private d:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;)Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->b:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 234
    new-instance v0, Lcom/avast/android/mobilesecurity/app/settings/aa;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/settings/aa;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/settings/x;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 235
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "/ms/settings/updates"

    return-object v0
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f0c01f4

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    const v1, 0x7f070027

    invoke-virtual {v0, v1, p0}, Lcom/avast/android/generic/util/s;->a(ILandroid/os/Handler$Callback;)V

    .line 223
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->c:Z

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->a(Landroid/content/Context;)V

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->c:Z

    .line 226
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 228
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 204
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 214
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 206
    :pswitch_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->d()V

    .line 207
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->d:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 208
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->c:Z

    goto :goto_1

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x7f070027
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    const v0, 0x7f030066

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 111
    return-object v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 181
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onResume()V

    .line 183
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b()V

    .line 184
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->b:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->b()V

    .line 185
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->b:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->setEnabled(Z)V

    .line 187
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->d()V

    .line 189
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "forceRunManualUpdate"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->c()V

    .line 193
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 116
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 121
    const v1, 0x7f07016d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->d:Landroid/widget/ProgressBar;

    .line 122
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->d:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 124
    const v1, 0x7f07016e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 125
    const v1, 0x7f07016f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->b:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    .line 127
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aC()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Z)V

    .line 128
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/settings/x;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/settings/x;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 148
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    const v1, 0x7f0c03a9

    new-array v2, v4, [Ljava/lang/Object;

    const v3, 0x7f0c03aa

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->d(Ljava/lang/String;)V

    .line 151
    const v0, 0x7f070170

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/NextRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/settings/y;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/settings/y;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->b:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/settings/z;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/settings/z;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->a(Lcom/avast/android/mobilesecurity/ui/widget/g;)V

    .line 173
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->b:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    invoke-virtual {v0, v4, v4, v5}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->a(ZZZ)V

    .line 177
    return-void
.end method
