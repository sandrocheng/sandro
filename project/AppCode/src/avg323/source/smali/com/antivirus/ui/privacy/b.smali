.class public Lcom/antivirus/ui/privacy/b;
.super Lcom/antivirus/ui/a/a/a;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:[Lcom/avg/ui/general/s;

.field private b:Landroid/view/View;

.field private c:Ljava/util/ArrayList;

.field private d:Landroid/app/Dialog;

.field private e:I

.field private f:I

.field private g:Lcom/antivirus/ui/privacy/h;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/antivirus/ui/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/privacy/b;->b:Landroid/view/View;

    iput-object v0, p0, Lcom/antivirus/ui/privacy/b;->c:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/antivirus/ui/privacy/b;->d:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/ui/privacy/b;->h:Z

    return-void
.end method

.method private G()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->b:Landroid/view/View;

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/antivirus/ui/privacy/b;->g:Lcom/antivirus/ui/privacy/h;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private H()V
    .locals 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/privacy/b;->c:Ljava/util/ArrayList;

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v5

    invoke-static {}, Lcom/avg/ui/general/o;->b()[Lcom/avg/ui/general/s;

    move-result-object v6

    array-length v7, v6

    move v4, v1

    :goto_0
    if-ge v4, v7, :cond_7

    aget-object v0, v6, v4

    sget-object v3, Lcom/antivirus/ui/privacy/g;->a:[I

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->ordinal()I

    move-result v8

    aget v3, v3, v8

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v3

    iget-object v3, v3, Lcom/avg/toolkit/e/a;->d:Lcom/avg/toolkit/e/c;

    sget-object v8, Lcom/avg/toolkit/e/c;->a:Lcom/avg/toolkit/e/c;

    if-eq v3, v8, :cond_0

    iget-object v8, p0, Lcom/antivirus/ui/privacy/b;->c:Ljava/util/ArrayList;

    new-instance v9, Lcom/antivirus/ui/i;

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v10

    invoke-virtual {v5}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Lcom/avg/toolkit/e/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    :goto_2
    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v3

    iget-object v3, v3, Lcom/avg/toolkit/e/a;->d:Lcom/avg/toolkit/e/c;

    sget-object v11, Lcom/avg/toolkit/e/c;->c:Lcom/avg/toolkit/e/c;

    if-eq v3, v11, :cond_3

    move v3, v2

    :goto_3
    invoke-direct {v9, v10, v0, v3}, Lcom/antivirus/ui/i;-><init>(IZZ)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3

    :pswitch_1
    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v3

    iget-object v3, v3, Lcom/avg/toolkit/e/a;->h:Lcom/avg/toolkit/e/c;

    sget-object v8, Lcom/avg/toolkit/e/c;->a:Lcom/avg/toolkit/e/c;

    if-eq v3, v8, :cond_0

    iget-object v8, p0, Lcom/antivirus/ui/privacy/b;->c:Ljava/util/ArrayList;

    new-instance v9, Lcom/antivirus/ui/i;

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v10

    invoke-virtual {v5}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v5}, Lcom/avg/toolkit/e/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v2

    :goto_4
    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v3

    iget-object v3, v3, Lcom/avg/toolkit/e/a;->h:Lcom/avg/toolkit/e/c;

    sget-object v11, Lcom/avg/toolkit/e/c;->c:Lcom/avg/toolkit/e/c;

    if-eq v3, v11, :cond_6

    move v3, v2

    :goto_5
    invoke-direct {v9, v10, v0, v3}, Lcom/antivirus/ui/i;-><init>(IZZ)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v3, v1

    goto :goto_5

    :pswitch_2
    iget-object v3, p0, Lcom/antivirus/ui/privacy/b;->c:Ljava/util/ArrayList;

    new-instance v8, Lcom/antivirus/ui/i;

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v0

    invoke-direct {v8, v0, v1, v1}, Lcom/antivirus/ui/i;-><init>(IZZ)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Lcom/antivirus/ui/privacy/b;->c:Ljava/util/ArrayList;

    new-instance v8, Lcom/antivirus/ui/i;

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v0

    invoke-direct {v8, v0, v1, v1}, Lcom/antivirus/ui/i;-><init>(IZZ)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_4
    iget-object v3, p0, Lcom/antivirus/ui/privacy/b;->c:Ljava/util/ArrayList;

    new-instance v8, Lcom/antivirus/ui/i;

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v0

    invoke-direct {v8, v0, v1, v1}, Lcom/antivirus/ui/i;-><init>(IZZ)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_5
    iget-object v3, p0, Lcom/antivirus/ui/privacy/b;->c:Ljava/util/ArrayList;

    new-instance v8, Lcom/antivirus/ui/i;

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v0

    invoke-direct {v8, v0, v1, v1}, Lcom/antivirus/ui/i;-><init>(IZZ)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    new-instance v0, Lcom/antivirus/ui/privacy/h;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, p0, v1}, Lcom/antivirus/ui/privacy/h;-><init>(Lcom/antivirus/ui/privacy/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/ui/privacy/b;->g:Lcom/antivirus/ui/privacy/h;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private I()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const-class v2, Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/antivirus/ui/privacy/b;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "default_tab_name"

    sget-object v2, Lcom/antivirus/ui/callmessagefilter/fragment/n;->b:Lcom/antivirus/ui/callmessagefilter/fragment/n;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "default_filter_option"

    sget-object v2, Lcom/antivirus/ui/callmessagefilter/fragment/ah;->b:Lcom/antivirus/ui/callmessagefilter/fragment/ah;

    invoke-virtual {v2}, Lcom/antivirus/ui/callmessagefilter/fragment/ah;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/antivirus/ui/privacy/b;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "call_message_blocker"

    const-string v2, "call_message_blocker_open_privacy"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private J()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, ":android:show_fragment"

    const-string v2, "com.android.settings.MasterClear"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/antivirus/ui/privacy/b;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "privacy"

    const-string v2, "wipe_device"

    const-string v3, "permitted"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.MasterClear"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private K()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const-class v2, Lcom/antivirus/wipe/WipeByApp;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/privacy/b;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private L()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const-class v2, Lcom/antivirus/wipe/WipeSd;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/privacy/b;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private M()V
    .locals 5

    const v3, 0x7f0800be

    const/4 v4, 0x0

    new-instance v0, Lcom/antivirus/applocker/c;

    invoke-direct {v0}, Lcom/antivirus/applocker/c;-><init>()V

    iget-object v1, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/antivirus/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/avg/ui/general/s;->a:Lcom/avg/ui/general/s;

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/antivirus/ui/privacy/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->g:Lcom/antivirus/ui/privacy/h;

    invoke-virtual {v0, v4}, Lcom/antivirus/ui/privacy/h;->a(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/antivirus/applocker/q;

    invoke-direct {v1}, Lcom/antivirus/applocker/q;-><init>()V

    const-string v2, "PasswordConfirmationFragment"

    invoke-virtual {v0, v1, v3, v2}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->n()V

    :goto_1
    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "app_locker"

    const-string v2, "change_password"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const-class v2, Lcom/antivirus/applocker/PasswordConfirmation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/antivirus/ui/privacy/b;->a(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v1}, Lcom/antivirus/applocker/c;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/antivirus/c;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/avg/ui/general/s;->a:Lcom/avg/ui/general/s;

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/antivirus/ui/privacy/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->g:Lcom/antivirus/ui/privacy/h;

    invoke-virtual {v0, v4}, Lcom/antivirus/ui/privacy/h;->a(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/antivirus/applocker/n;

    invoke-direct {v1}, Lcom/antivirus/applocker/n;-><init>()V

    const-string v2, "LockerBlockFragment"

    invoke-virtual {v0, v1, v3, v2}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->n()V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const-class v2, Lcom/antivirus/applocker/LockerBlockActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    iget-object v2, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090113

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "firest_edit_text"

    iget-object v2, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090116

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/ui/privacy/b;->a(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/avg/ui/general/s;->a:Lcom/avg/ui/general/s;

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/antivirus/ui/privacy/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->g:Lcom/antivirus/ui/privacy/h;

    invoke-virtual {v0, v4}, Lcom/antivirus/ui/privacy/h;->a(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/antivirus/applocker/g;

    invoke-direct {v1}, Lcom/antivirus/applocker/g;-><init>()V

    const-string v2, "AppLockerFragment"

    invoke-virtual {v0, v1, v3, v2}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->n()V

    :goto_2
    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "privacy"

    const-string v2, "app_locker"

    const-string v3, "permitted"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const-class v2, Lcom/antivirus/applocker/AppLockerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/privacy/b;->a(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private N()V
    .locals 3

    invoke-virtual {p0}, Lcom/antivirus/ui/privacy/b;->h()Landroid/support/v4/app/i;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/antivirus/ui/privacy/c;

    invoke-direct {v2, p0, v0}, Lcom/antivirus/ui/privacy/c;-><init>(Lcom/antivirus/ui/privacy/b;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private O()V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/antivirus/ui/privacy/e;

    invoke-direct {v2, p0, v0}, Lcom/antivirus/ui/privacy/e;-><init>(Lcom/antivirus/ui/privacy/b;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/privacy/b;I)I
    .locals 0

    iput p1, p0, Lcom/antivirus/ui/privacy/b;->e:I

    return p1
.end method

.method static synthetic a(Lcom/antivirus/ui/privacy/b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Lcom/avg/ui/general/s;)V
    .locals 5

    sget-object v0, Lcom/antivirus/ui/privacy/g;->a:[I

    invoke-virtual {p1}, Lcom/avg/ui/general/s;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "app_locker"

    :goto_1
    iget-object v1, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v2, "privacy"

    const-string v3, "forbidden"

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    const-string v0, "app_backup"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/antivirus/ui/privacy/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/antivirus/ui/privacy/b;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method private b(I)Z
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->g:Lcom/antivirus/ui/privacy/h;

    invoke-virtual {v0}, Lcom/antivirus/ui/privacy/h;->a()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->g:Lcom/antivirus/ui/privacy/h;

    invoke-virtual {v0, p1}, Lcom/antivirus/ui/privacy/h;->a(I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/antivirus/ui/privacy/b;)I
    .locals 1

    iget v0, p0, Lcom/antivirus/ui/privacy/b;->e:I

    return v0
.end method

.method static synthetic f(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic g(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic h(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic i(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic j(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic k(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic l(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic m(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic n(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic o(Lcom/antivirus/ui/privacy/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/ui/privacy/b;->h:Z

    return v0
.end method

.method static synthetic p(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic q(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic r(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic s(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic t(Lcom/antivirus/ui/privacy/b;)I
    .locals 1

    iget v0, p0, Lcom/antivirus/ui/privacy/b;->f:I

    return v0
.end method

.method static synthetic u(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic v(Lcom/antivirus/ui/privacy/b;)Lcom/antivirus/ui/privacy/h;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->g:Lcom/antivirus/ui/privacy/h;

    return-object v0
.end method

.method static synthetic w(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method


# virtual methods
.method public F()V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->g:Lcom/antivirus/ui/privacy/h;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/antivirus/ui/privacy/b;->O()V

    iput v1, p0, Lcom/antivirus/ui/privacy/b;->f:I

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->g:Lcom/antivirus/ui/privacy/h;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/privacy/h;->a(I)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->g:Lcom/antivirus/ui/privacy/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/privacy/h;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03002b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/privacy/b;->b:Landroid/view/View;

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/antivirus/ui/privacy/b;->G()V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->b:Landroid/view/View;

    return-object v0
.end method

.method public a()V
    .locals 1

    invoke-static {}, Lcom/avg/ui/general/o;->b()[Lcom/avg/ui/general/s;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/privacy/b;->a:[Lcom/avg/ui/general/s;

    invoke-direct {p0}, Lcom/antivirus/ui/privacy/b;->H()V

    invoke-direct {p0}, Lcom/antivirus/ui/privacy/b;->G()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->p()V

    :cond_0
    iput v1, p0, Lcom/antivirus/ui/privacy/b;->e:I

    iput v1, p0, Lcom/antivirus/ui/privacy/b;->f:I

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/avg/ui/general/o;->b()[Lcom/avg/ui/general/s;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/privacy/b;->a:[Lcom/avg/ui/general/s;

    invoke-direct {p0}, Lcom/antivirus/ui/privacy/b;->H()V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->e()V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/privacy/b;->a(Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    const v3, 0x7f0800be

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p3, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/i;

    iget v1, v0, Lcom/antivirus/ui/i;->a:I

    iput v1, p0, Lcom/antivirus/ui/privacy/b;->f:I

    iget-object v1, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/antivirus/ui/privacy/b;->g:Lcom/antivirus/ui/privacy/h;

    invoke-virtual {v1}, Lcom/antivirus/ui/privacy/h;->notifyDataSetChanged()V

    :cond_2
    :try_start_0
    iget v1, v0, Lcom/antivirus/ui/i;->a:I

    invoke-static {v1}, Lcom/avg/ui/general/s;->a(I)Lcom/avg/ui/general/s;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    sget-object v1, Lcom/antivirus/ui/privacy/g;->a:[I

    invoke-virtual {v6}, Lcom/avg/ui/general/s;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, v0, Lcom/antivirus/ui/i;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090129

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f09012a

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const v4, 0x7f09012b

    invoke-static {v3, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0200e2

    invoke-static/range {v0 .. v5}, Lcom/avg/ui/general/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/privacy/b;->d:Landroid/app/Dialog;

    invoke-direct {p0, v6}, Lcom/antivirus/ui/privacy/b;->a(Lcom/avg/ui/general/s;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/antivirus/ui/privacy/b;->M()V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, v0, Lcom/antivirus/ui/i;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090228

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const v3, 0x7f090229

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const v4, 0x7f09022a

    invoke-static {v3, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0200e1

    invoke-static/range {v0 .. v5}, Lcom/avg/ui/general/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/privacy/b;->d:Landroid/app/Dialog;

    invoke-direct {p0, v6}, Lcom/antivirus/ui/privacy/b;->a(Lcom/avg/ui/general/s;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/avg/ui/general/s;->b:Lcom/avg/ui/general/s;

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/antivirus/ui/privacy/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->g:Lcom/antivirus/ui/privacy/h;

    invoke-virtual {v0, v5}, Lcom/antivirus/ui/privacy/h;->a(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/antivirus/ui/backup/apps/b;

    invoke-direct {v1}, Lcom/antivirus/ui/backup/apps/b;-><init>()V

    const-string v2, "BackupAndRestoreTabsFragment"

    invoke-virtual {v0, v1, v3, v2}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->n()V

    :goto_1
    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "privacy"

    const-string v2, "app_backup"

    const-string v3, "permitted"

    invoke-static {v0, v1, v2, v3, v5}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const-class v2, Lcom/antivirus/ui/backup/apps/BackupMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/privacy/b;->a(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/avg/ui/general/s;->c:Lcom/avg/ui/general/s;

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/antivirus/ui/privacy/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->g:Lcom/antivirus/ui/privacy/h;

    invoke-virtual {v0, v5}, Lcom/antivirus/ui/privacy/h;->a(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;

    invoke-direct {v1}, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;-><init>()V

    const-string v2, "CallMessageTabFragment"

    invoke-virtual {v0, v1, v3, v2}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->n()V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/antivirus/ui/privacy/b;->I()V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/antivirus/ui/privacy/b;->J()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/avg/ui/general/s;->f:Lcom/avg/ui/general/s;

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/antivirus/ui/privacy/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->g:Lcom/antivirus/ui/privacy/h;

    invoke-virtual {v0, v5}, Lcom/antivirus/ui/privacy/h;->a(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/antivirus/wipe/ab;

    invoke-direct {v1}, Lcom/antivirus/wipe/ab;-><init>()V

    const-string v2, "WipeSdFragment"

    invoke-virtual {v0, v1, v3, v2}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->n()V

    :goto_2
    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "privacy"

    const-string v2, "wipe_sd"

    const-string v3, "permitted"

    invoke-static {v0, v1, v2, v3, v5}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/antivirus/ui/privacy/b;->L()V

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/avg/ui/general/s;->e:Lcom/avg/ui/general/s;

    invoke-virtual {v0}, Lcom/avg/ui/general/s;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/antivirus/ui/privacy/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->g:Lcom/antivirus/ui/privacy/h;

    invoke-virtual {v0, v5}, Lcom/antivirus/ui/privacy/h;->a(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/antivirus/wipe/b;

    invoke-direct {v1}, Lcom/antivirus/wipe/b;-><init>()V

    const-string v2, "WipeByAppFragment"

    invoke-virtual {v0, v1, v3, v2}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->n()V

    :goto_3
    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "privacy"

    const-string v2, "wipe_data"

    const-string v3, "permitted"

    invoke-static {v0, v1, v2, v3, v5}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/antivirus/ui/privacy/b;->K()V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public r()V
    .locals 3

    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->r()V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->g:Lcom/antivirus/ui/privacy/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/antivirus/ui/privacy/h;

    iget-object v1, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, p0, v1}, Lcom/antivirus/ui/privacy/h;-><init>(Lcom/antivirus/ui/privacy/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/ui/privacy/b;->g:Lcom/antivirus/ui/privacy/h;

    :cond_0
    invoke-direct {p0}, Lcom/antivirus/ui/privacy/b;->O()V

    invoke-direct {p0}, Lcom/antivirus/ui/privacy/b;->N()V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "launchFormWidget"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "launchFormWidget"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/antivirus/ui/privacy/b;->M()V

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->finish()V

    goto :goto_0
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/privacy/b;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/ui/privacy/b;->d:Landroid/app/Dialog;

    :cond_0
    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->t()V

    return-void
.end method
