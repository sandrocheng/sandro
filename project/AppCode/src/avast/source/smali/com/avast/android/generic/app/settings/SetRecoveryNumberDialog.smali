.class public Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SetRecoveryNumberDialog.java"


# instance fields
.field private a:Landroid/os/Handler$Callback;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/avast/android/generic/app/settings/f;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/app/settings/f;-><init>(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->a:Landroid/os/Handler$Callback;

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 181
    new-instance v0, Lcom/avast/android/generic/ui/CustomNumberDialog;

    invoke-direct {v0}, Lcom/avast/android/generic/ui/CustomNumberDialog;-><init>()V

    .line 182
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 183
    const-string v2, "disable_wildcards"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog_custom_number"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 167
    packed-switch p1, :pswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->c:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 172
    :pswitch_1
    invoke-direct {p0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->a()V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 221
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 223
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    const-string v0, "data1"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    if-eqz v1, :cond_0

    .line 235
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 232
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Can\'t pick contact phone number."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 234
    if-eqz v1, :cond_1

    .line 235
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_1
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_2

    .line 235
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_2
    throw v0

    :cond_3
    if-eqz v1, :cond_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 228
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->b()V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avast.android.generic.app.settings.ACTION_NUMBER_ENTERED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/p;->a(Landroid/content/Intent;)Z

    .line 245
    return-void
.end method

.method static synthetic b(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avast.android.generic.app.settings.CLOSE_RECOVERY_DESCRIPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/p;->a(Landroid/content/Intent;)Z

    .line 250
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    sget v1, Lcom/avast/android/generic/t;->V:I

    iget-object v2, p0, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->a:Landroid/os/Handler$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/util/s;->a(ILandroid/os/Handler$Callback;)V

    .line 150
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/BaseActivity;->a(Z)V

    .line 195
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 196
    if-nez p1, :cond_0

    .line 197
    invoke-direct {p0, p3}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->a(Landroid/content/Intent;)V

    .line 199
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/avast/android/generic/app/settings/k;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/settings/k;-><init>(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 210
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->c:Landroid/content/Intent;

    .line 81
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->c:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 87
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    sget v0, Lcom/avast/android/generic/z;->bK:I

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-virtual {p0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->c:Landroid/content/Intent;

    const/high16 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v6, v7

    .line 95
    :goto_0
    if-eqz v6, :cond_0

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    const-string v3, "name"

    sget v4, Lcom/avast/android/generic/z;->cl:I

    invoke-virtual {p0, v4}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v3, "image"

    sget v4, Lcom/avast/android/generic/s;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    const-string v3, "name"

    sget v4, Lcom/avast/android/generic/z;->br:I

    invoke-virtual {p0, v4}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v3, "image"

    sget v4, Lcom/avast/android/generic/s;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->b:Landroid/widget/ListView;

    .line 108
    new-instance v0, Landroid/widget/SimpleAdapter;

    sget v3, Lcom/avast/android/generic/v;->e:I

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "name"

    aput-object v5, v4, v8

    const-string v5, "image"

    aput-object v5, v4, v7

    new-array v5, v10, [I

    sget v10, Lcom/avast/android/generic/t;->N:I

    aput v10, v5, v8

    sget v10, Lcom/avast/android/generic/t;->g:I

    aput v10, v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 112
    iget-object v1, p0, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/avast/android/generic/app/settings/h;

    invoke-direct {v1, p0, v6}, Lcom/avast/android/generic/app/settings/h;-><init>(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->b:Landroid/widget/ListView;

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {p0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "after_pin_setup"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    sget v0, Lcom/avast/android/generic/z;->e:I

    new-instance v1, Lcom/avast/android/generic/app/settings/i;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/settings/i;-><init>(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;)V

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 131
    sget v0, Lcom/avast/android/generic/z;->aD:I

    new-instance v1, Lcom/avast/android/generic/app/settings/j;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/settings/j;-><init>(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;)V

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    :cond_1
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 142
    return-object v0

    :cond_2
    move v6, v8

    .line 93
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 154
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 155
    invoke-virtual {p0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    sget v1, Lcom/avast/android/generic/t;->V:I

    iget-object v2, p0, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->a:Landroid/os/Handler$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/util/s;->b(ILandroid/os/Handler$Callback;)V

    .line 157
    return-void
.end method
