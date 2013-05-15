.class public Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;
.super Lcom/avast/android/generic/util/ga/TrackedListFragment;
.source "DashboardFragment.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# instance fields
.field private a:I

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 262
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->a:I

    if-ltz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 264
    const/4 v0, -0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->a:I

    .line 266
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 237
    iput p1, p0, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->a:I

    .line 238
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 4
    .parameter

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/home/a;

    .line 247
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/home/a;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 248
    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/app/home/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/app/home/b;

    .line 249
    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/home/b;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 250
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->a(I)V

    .line 256
    :cond_1
    return-void

    .line 247
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->a:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "/ms"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/avast/android/mobilesecurity/app/home/c;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/home/c;-><init>(Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 120
    return-void
.end method

.method public onBackStackChanged()V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->a()V

    .line 228
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    const v0, 0x7f030047

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 126
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 128
    iget v1, p0, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->a:I

    if-ne v1, p3, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 218
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/al;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 134
    invoke-virtual {p0, p3}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->a(I)V

    .line 137
    :cond_1
    long-to-int v0, p4

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 139
    :sswitch_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerActivity;->call(Landroid/content/Context;)V

    goto :goto_0

    .line 142
    :sswitch_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerActivity;->call(Landroid/content/Context;)V

    goto :goto_0

    .line 145
    :sswitch_2
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerActivity;->call(Landroid/content/Context;)V

    goto :goto_0

    .line 148
    :sswitch_3
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/BaseActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlActivity;->call(Lcom/avast/android/generic/ui/BaseActivity;)V

    goto :goto_0

    .line 151
    :sswitch_4
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupsActivity;->call(Landroid/content/Context;)V

    goto :goto_0

    .line 154
    :sswitch_5
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallActivity;->call(Landroid/content/Context;)V

    goto :goto_0

    .line 157
    :sswitch_6
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerActivity;->call(Landroid/content/Context;)V

    goto :goto_0

    .line 160
    :sswitch_7
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/z;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_2

    .line 162
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 163
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.avast.android.antitheft.app.AlwaysAvailableStartupActivity"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 166
    const-string v0, "com.avast.android.antitheft.LAUNCH"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/avast/android/generic/ae;

    invoke-static {v0, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 169
    const-string v2, "ignorePwd"

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->o()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    const v0, 0x10008000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not launch anti-theft: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 179
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/com.avast.android.antitheft.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c04ed

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :cond_3
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeActivity;->call(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 214
    :sswitch_8
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsActivity;->call(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 137
    :sswitch_data_0
    .sparse-switch
        0x7f0c01ea -> :sswitch_0
        0x7f0c01eb -> :sswitch_1
        0x7f0c01ed -> :sswitch_2
        0x7f0c01ef -> :sswitch_4
        0x7f0c01f0 -> :sswitch_5
        0x7f0c01f1 -> :sswitch_3
        0x7f0c01f2 -> :sswitch_6
        0x7f0c01f4 -> :sswitch_8
        0x7f0c0258 -> :sswitch_7
    .end sparse-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    const v1, 0x7f0300a7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->b:Landroid/view/View;

    .line 79
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 80
    new-instance v0, Lcom/avast/android/mobilesecurity/app/home/a;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/app/home/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/home/DashboardFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    return-void
.end method
