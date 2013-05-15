.class public Lcom/avast/android/generic/app/account/AccountFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "AccountFragment.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:Z

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/Button;

.field private o:Z

.field private p:Landroid/os/Handler;

.field private q:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private r:Z

.field private s:Z

.field private t:Lcom/avast/android/generic/app/account/j;

.field private u:Lcom/avast/android/generic/app/account/m;

.field private v:Landroid/app/ProgressDialog;

.field private w:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avast/android/generic/app/account/AccountFragment;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->b:Z

    .line 710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->s:Z

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1000
    .line 1002
    :try_start_0
    const-string v0, "com.avast.android.mobilesecurity.app.account.ServerAddressHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1004
    const-string v2, "getPairingServerAddress"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1012
    :goto_0
    if-eqz v0, :cond_0

    .line 1013
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v1, v0

    .line 1019
    :goto_2
    return-object v1

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    const-string v2, "AccountFragment"

    const-string v3, "ServerAddressHelper not available."

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 1015
    :catch_1
    move-exception v0

    .line 1016
    const-string v2, "AccountFragment"

    const-string v3, "Invocation of ServerAddressHelper.getPairingServerAddress() failed."

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1064
    if-eqz p2, :cond_0

    .line 1065
    const-string v0, "AccountFragment"

    const-string v1, "Sending avast! account connected broadcast."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avast.android.mobilesecurity.app.account.ACCOUNT_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1067
    invoke-static {v0}, Lcom/avast/android/generic/util/ae;->a(Landroid/content/Intent;)V

    .line 1068
    const-string v1, "com.avast.android.generic.COMM_PERMISSION"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->e()V

    .line 1074
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/account/AccountFragment;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/account/AccountFragment;Lcom/avast/android/generic/app/account/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Lcom/avast/android/generic/app/account/j;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/account/AccountFragment;Lcom/avast/android/generic/app/account/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Lcom/avast/android/generic/app/account/m;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/account/AccountFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/avast/android/generic/app/account/j;)V
    .locals 2
    .parameter

    .prologue
    .line 924
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->c()V

    .line 926
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->v:Landroid/app/ProgressDialog;

    .line 927
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->v:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 928
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->v:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/avast/android/generic/app/account/g;

    invoke-direct {v1, p0, p1}, Lcom/avast/android/generic/app/account/g;-><init>(Lcom/avast/android/generic/app/account/AccountFragment;Lcom/avast/android/generic/app/account/j;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 935
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->v:Landroid/app/ProgressDialog;

    sget v1, Lcom/avast/android/generic/z;->cI:I

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/app/account/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 936
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->v:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 937
    return-void
.end method

.method private a(Lcom/avast/android/generic/app/account/m;)V
    .locals 2
    .parameter

    .prologue
    .line 945
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->d()V

    .line 947
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->w:Landroid/app/ProgressDialog;

    .line 948
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->w:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 949
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->w:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/avast/android/generic/app/account/h;

    invoke-direct {v1, p0, p1}, Lcom/avast/android/generic/app/account/h;-><init>(Lcom/avast/android/generic/app/account/AccountFragment;Lcom/avast/android/generic/app/account/m;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 956
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->w:Landroid/app/ProgressDialog;

    sget v1, Lcom/avast/android/generic/z;->bN:I

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/app/account/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 957
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->w:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 958
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 989
    new-instance v0, Lcom/avast/android/generic/app/account/m;

    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/avast/android/generic/app/account/m;-><init>(Lcom/avast/android/generic/app/account/AccountFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->u:Lcom/avast/android/generic/app/account/m;

    .line 990
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->u:Lcom/avast/android/generic/app/account/m;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 991
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/account/AccountFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/avast/android/generic/app/account/AccountFragment;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/generic/app/account/AccountFragment;Lcom/avast/android/generic/app/account/j;)Lcom/avast/android/generic/app/account/j;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/avast/android/generic/app/account/AccountFragment;->t:Lcom/avast/android/generic/app/account/j;

    return-object p1
.end method

.method private c()V
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->v:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 965
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->v:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 969
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->v:Landroid/app/ProgressDialog;

    .line 971
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/avast/android/generic/app/account/AccountFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->b:Z

    return v0
.end method

.method static synthetic d(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->w:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 978
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->w:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 981
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->w:Landroid/app/ProgressDialog;

    .line 983
    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 1026
    iget-boolean v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->o:Z

    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1028
    const-string v1, "com.avast.android.mobilesecurity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1030
    :try_start_0
    const-string v0, "com.avast.android.mobilesecurity.app.wizard.ScanWizardActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1033
    const-string v1, "call"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1034
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->j()V

    .line 1053
    return-void

    .line 1035
    :catch_0
    move-exception v0

    .line 1037
    const-string v1, "AccountFragment"

    const-string v2, "ScanWizardActivity not available."

    invoke-static {v1, v2, v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1039
    :cond_1
    const-string v1, "com.avast.android.backup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    :try_start_1
    const-string v0, "com.avast.android.backup.app.home.HomeActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1044
    const-string v1, "call"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1045
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1046
    :catch_1
    move-exception v0

    .line 1048
    const-string v1, "AccountFragment"

    const-string v2, "HomeActivity not available."

    invoke-static {v1, v2, v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic f(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 1082
    sget-object v0, Lcom/avast/android/generic/app/account/AccountFragment;->a:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/AccountFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1092
    invoke-static {v0}, Lcom/avast/android/generic/util/aa;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1093
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    const/4 v0, 0x0

    .line 1097
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private h()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1106
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v3, 0x7

    if-lt v0, v3, :cond_0

    move v0, v1

    .line 1107
    :goto_0
    iget-object v3, p0, Lcom/avast/android/generic/app/account/AccountFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/generic/app/account/AccountFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1109
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 1106
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1109
    goto :goto_1
.end method

.method static synthetic h(Lcom/avast/android/generic/app/account/AccountFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/avast/android/generic/app/account/AccountFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->r:Z

    return v0
.end method

.method static synthetic k(Lcom/avast/android/generic/app/account/AccountFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->s:Z

    return v0
.end method

.method static synthetic l(Lcom/avast/android/generic/app/account/AccountFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->q:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic m(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic p(Lcom/avast/android/generic/app/account/AccountFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic q(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic r(Lcom/avast/android/generic/app/account/AccountFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->c()V

    return-void
.end method

.method static synthetic s(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic t(Lcom/avast/android/generic/app/account/AccountFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->d()V

    return-void
.end method

.method static synthetic u(Lcom/avast/android/generic/app/account/AccountFragment;)Lcom/avast/android/generic/app/account/j;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->t:Lcom/avast/android/generic/app/account/j;

    return-object v0
.end method

.method static synthetic v(Lcom/avast/android/generic/app/account/AccountFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->o:Z

    return v0
.end method

.method static synthetic w(Lcom/avast/android/generic/app/account/AccountFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic x(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic y(Lcom/avast/android/generic/app/account/AccountFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->e()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "/ms/wizard/account/connector"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/ms/account/connector"

    goto :goto_0
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 724
    sget v0, Lcom/avast/android/generic/z;->aw:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 880
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 883
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 888
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->t:Lcom/avast/android/generic/app/account/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->t:Lcom/avast/android/generic/app/account/j;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/j;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->t:Lcom/avast/android/generic/app/account/j;

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Lcom/avast/android/generic/app/account/j;)V

    .line 891
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 729
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 731
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->p:Landroid/os/Handler;

    .line 732
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/app/account/AccountFragment;->setRetainInstance(Z)V

    .line 733
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 737
    sget v0, Lcom/avast/android/generic/v;->t:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 739
    invoke-virtual {p0, v0}, Lcom/avast/android/generic/app/account/AccountFragment;->b(Landroid/view/View;)V

    .line 741
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 905
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onDestroy()V

    .line 906
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->t:Lcom/avast/android/generic/app/account/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->t:Lcom/avast/android/generic/app/account/j;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/j;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->t:Lcom/avast/android/generic/app/account/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/account/j;->cancel(Z)Z

    .line 909
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 913
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onDetach()V

    .line 914
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->c()V

    .line 915
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->d()V

    .line 916
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 900
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onPause()V

    .line 901
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 895
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onResume()V

    .line 896
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 747
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 748
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "wizard"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->o:Z

    .line 749
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "queryPhoneNumber"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->s:Z

    .line 751
    iget-boolean v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->o:Z

    if-eqz v0, :cond_0

    .line 752
    sget v0, Lcom/avast/android/generic/t;->d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 753
    sget v0, Lcom/avast/android/generic/t;->aV:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 754
    invoke-virtual {p0, p1}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Landroid/view/View;)Landroid/support/v4/app/FragmentBreadCrumbs;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentBreadCrumbs;->setVisibility(I)V

    .line 757
    :cond_0
    sget v0, Lcom/avast/android/generic/t;->b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->c:Landroid/widget/EditText;

    .line 758
    sget v0, Lcom/avast/android/generic/t;->aU:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->d:Landroid/widget/ImageView;

    .line 759
    sget v0, Lcom/avast/android/generic/t;->au:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->e:Landroid/widget/TextView;

    .line 760
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/avast/android/generic/app/account/r;

    invoke-direct {v1, p0, v7}, Lcom/avast/android/generic/app/account/r;-><init>(Lcom/avast/android/generic/app/account/AccountFragment;Lcom/avast/android/generic/app/account/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 762
    sget v0, Lcom/avast/android/generic/t;->J:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->f:Landroid/widget/EditText;

    .line 763
    sget v0, Lcom/avast/android/generic/t;->K:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->g:Landroid/widget/EditText;

    .line 764
    sget v0, Lcom/avast/android/generic/t;->B:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->h:Landroid/widget/ImageView;

    .line 765
    sget v0, Lcom/avast/android/generic/t;->D:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->i:Landroid/widget/ImageView;

    .line 766
    sget v0, Lcom/avast/android/generic/t;->aS:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->j:Landroid/widget/TextView;

    .line 768
    new-instance v4, Lcom/avast/android/generic/app/account/p;

    invoke-direct {v4, p0, v7}, Lcom/avast/android/generic/app/account/p;-><init>(Lcom/avast/android/generic/app/account/AccountFragment;Lcom/avast/android/generic/app/account/c;)V

    .line 769
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 770
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 772
    sget v0, Lcom/avast/android/generic/t;->ap:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 774
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/f/b/a;->g(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->r:Z

    .line 776
    sget v0, Lcom/avast/android/generic/t;->az:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->k:Landroid/widget/EditText;

    .line 777
    sget v0, Lcom/avast/android/generic/t;->O:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->l:Landroid/widget/ImageView;

    .line 778
    sget v0, Lcom/avast/android/generic/t;->x:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->q:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 780
    new-instance v6, Lcom/avast/android/generic/app/account/q;

    invoke-direct {v6, p0, v7}, Lcom/avast/android/generic/app/account/q;-><init>(Lcom/avast/android/generic/app/account/AccountFragment;Lcom/avast/android/generic/app/account/c;)V

    .line 781
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 782
    sget v0, Lcom/avast/android/generic/t;->at:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->m:Landroid/widget/TextView;

    .line 785
    iget-boolean v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->r:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->s:Z

    if-eqz v0, :cond_3

    .line 786
    sget v0, Lcom/avast/android/generic/t;->C:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 789
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 790
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->q:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v8}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 813
    :goto_0
    sget v0, Lcom/avast/android/generic/t;->s:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 815
    new-instance v1, Lcom/avast/android/generic/app/account/d;

    invoke-direct {v1, p0, v5, v4}, Lcom/avast/android/generic/app/account/d;-><init>(Lcom/avast/android/generic/app/account/AccountFragment;Landroid/view/View;Lcom/avast/android/generic/app/account/p;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 824
    iget-boolean v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->b:Z

    if-eqz v0, :cond_1

    .line 825
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 828
    :cond_1
    sget v0, Lcom/avast/android/generic/t;->j:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->n:Landroid/widget/Button;

    .line 829
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->n:Landroid/widget/Button;

    new-instance v1, Lcom/avast/android/generic/app/account/e;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/account/e;-><init>(Lcom/avast/android/generic/app/account/AccountFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 860
    sget v0, Lcom/avast/android/generic/t;->aW:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 861
    new-instance v1, Lcom/avast/android/generic/app/account/f;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/account/f;-><init>(Lcom/avast/android/generic/app/account/AccountFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 871
    sget v1, Lcom/avast/android/generic/t;->w:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 872
    iget-boolean v3, p0, Lcom/avast/android/generic/app/account/AccountFragment;->o:Z

    if-eqz v3, :cond_2

    .line 873
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 874
    sget v1, Lcom/avast/android/generic/z;->aL:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 876
    :cond_2
    return-void

    .line 792
    :cond_3
    sget v0, Lcom/avast/android/generic/t;->C:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 794
    iget-boolean v1, p0, Lcom/avast/android/generic/app/account/AccountFragment;->s:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 795
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountFragment;->q:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 797
    sget v0, Lcom/avast/android/generic/t;->aO:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 799
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 801
    iget-object v1, p0, Lcom/avast/android/generic/app/account/AccountFragment;->q:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v3, Lcom/avast/android/generic/app/account/c;

    invoke-direct {v3, p0, v0, v6}, Lcom/avast/android/generic/app/account/c;-><init>(Lcom/avast/android/generic/app/account/AccountFragment;Landroid/widget/LinearLayout;Lcom/avast/android/generic/app/account/q;)V

    invoke-virtual {v1, v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 794
    goto :goto_1
.end method
