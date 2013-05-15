.class public Lcom/avast/android/generic/ui/PasswordDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "PasswordDialog.java"


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private c:Lcom/avast/android/generic/ae;

.field private d:Lcom/avast/android/generic/ui/widget/PasswordTextView;

.field private e:Landroid/widget/ImageView;

.field private f:I

.field private g:Z

.field private h:Landroid/app/Activity;

.field private i:Lcom/avast/android/generic/util/s;

.field private j:Lcom/avast/android/generic/ui/ae;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/content/BroadcastReceiver;

.field private n:Landroid/support/v4/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    sput v0, Lcom/avast/android/generic/ui/PasswordDialog;->a:I

    .line 84
    const/4 v0, 0x2

    sput v0, Lcom/avast/android/generic/ui/PasswordDialog;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 148
    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/avast/android/generic/ui/ad;)Landroid/os/Handler$Callback;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    new-instance v1, Lcom/avast/android/generic/ui/u;

    invoke-direct {v1, p2}, Lcom/avast/android/generic/ui/u;-><init>(Lcom/avast/android/generic/ui/ad;)V

    .line 175
    const-class v0, Lcom/avast/android/generic/util/s;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    invoke-virtual {v0, p1, v1}, Lcom/avast/android/generic/util/s;->a(ILandroid/os/Handler$Callback;)V

    .line 177
    return-object v1
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/PasswordDialog;)Lcom/avast/android/generic/ui/widget/PasswordTextView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->d:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 372
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/f/b/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->c:Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->k:Landroid/widget/TextView;

    sget v1, Lcom/avast/android/generic/z;->cA:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 378
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/avast/android/generic/q;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->l:Landroid/widget/TextView;

    sget v1, Lcom/avast/android/generic/z;->t:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 380
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/app/passwordrecovery/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->k:Landroid/widget/TextView;

    sget v1, Lcom/avast/android/generic/z;->ci:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 383
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/avast/android/generic/q;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/avast/android/generic/ui/ab;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/ui/ab;-><init>(Lcom/avast/android/generic/ui/PasswordDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->c:Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->u()Z

    move-result v0

    if-nez v0, :cond_4

    .line 395
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->k:Landroid/widget/TextView;

    sget v1, Lcom/avast/android/generic/z;->cA:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 396
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/avast/android/generic/q;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 397
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->l:Landroid/widget/TextView;

    sget v1, Lcom/avast/android/generic/z;->cD:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 398
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 400
    :cond_4
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 198
    const-class v0, Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Showing password dialog."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 200
    const-string v0, "passwordDialog"

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 201
    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-direct {v0}, Lcom/avast/android/generic/ui/PasswordDialog;-><init>()V

    .line 203
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 204
    const-string v3, "callbackHandlerId"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    invoke-virtual {v0, v2}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 206
    const-string v2, "passwordDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 208
    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 410
    iget-object v1, p0, Lcom/avast/android/generic/ui/PasswordDialog;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    iget-object v1, p0, Lcom/avast/android/generic/ui/PasswordDialog;->d:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->a()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 413
    if-lez v1, :cond_3

    .line 414
    iget-object v2, p0, Lcom/avast/android/generic/ui/PasswordDialog;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    :goto_0
    if-lt v1, v3, :cond_0

    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 422
    :cond_1
    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->e:Landroid/widget/ImageView;

    sget v1, Lcom/avast/android/generic/s;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    :cond_2
    return-void

    .line 416
    :cond_3
    iget-object v2, p0, Lcom/avast/android/generic/ui/PasswordDialog;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/avast/android/generic/ui/PasswordDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->e:Landroid/widget/ImageView;

    sget v1, Lcom/avast/android/generic/s;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 434
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :cond_0
    :goto_0
    iget v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->f:I

    if-lez v0, :cond_1

    .line 443
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 444
    iget v1, p0, Lcom/avast/android/generic/ui/PasswordDialog;->f:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 445
    sget v1, Lcom/avast/android/generic/ui/PasswordDialog;->a:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 446
    iget-object v1, p0, Lcom/avast/android/generic/ui/PasswordDialog;->i:Lcom/avast/android/generic/util/s;

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/util/s;->a(Landroid/os/Message;)Z

    .line 448
    :cond_1
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    const-string v1, "Error dismissing password dialog"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/avast/android/generic/ui/PasswordDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->a()V

    return-void
.end method

.method private d()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 451
    new-instance v0, Lcom/avast/android/generic/ui/ac;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/ui/ac;-><init>(Lcom/avast/android/generic/ui/PasswordDialog;)V

    .line 473
    return-object v0
.end method

.method static synthetic d(Lcom/avast/android/generic/ui/PasswordDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->b()V

    return-void
.end method

.method static synthetic e(Lcom/avast/android/generic/ui/PasswordDialog;)Lcom/avast/android/generic/ae;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->c:Lcom/avast/android/generic/ae;

    return-object v0
.end method

.method static synthetic f(Lcom/avast/android/generic/ui/PasswordDialog;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/avast/android/generic/ui/PasswordDialog;)Lcom/avast/android/generic/ui/ae;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->j:Lcom/avast/android/generic/ui/ae;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->g:Z

    .line 230
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 244
    iget v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->f:I

    if-lez v0, :cond_0

    .line 245
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 246
    iget v1, p0, Lcom/avast/android/generic/ui/PasswordDialog;->f:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 247
    sget v1, Lcom/avast/android/generic/ui/PasswordDialog;->b:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 248
    iget-object v1, p0, Lcom/avast/android/generic/ui/PasswordDialog;->i:Lcom/avast/android/generic/util/s;

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/util/s;->a(Landroid/os/Message;)Z

    .line 250
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/ae;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    iput-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->c:Lcom/avast/android/generic/ae;

    .line 215
    new-instance v0, Lcom/avast/android/generic/ui/v;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/ui/v;-><init>(Lcom/avast/android/generic/ui/PasswordDialog;)V

    iput-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->m:Landroid/content/BroadcastReceiver;

    .line 221
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->n:Landroid/support/v4/a/p;

    .line 222
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->n:Landroid/support/v4/a/p;

    iget-object v1, p0, Lcom/avast/android/generic/ui/PasswordDialog;->m:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.avast.android.generic.app.passwordrecovery.ACTION_RECOVERY_INITIATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/p;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 224
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 274
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->h:Landroid/app/Activity;

    .line 275
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "callbackHandlerId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->f:I

    .line 277
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    iput-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->i:Lcom/avast/android/generic/util/s;

    .line 279
    new-instance v0, Lcom/avast/android/generic/ui/ae;

    iget-object v1, p0, Lcom/avast/android/generic/ui/PasswordDialog;->c:Lcom/avast/android/generic/ae;

    invoke-direct {v0, p0, v1}, Lcom/avast/android/generic/ui/ae;-><init>(Lcom/avast/android/generic/ui/PasswordDialog;Lcom/avast/android/generic/ae;)V

    iput-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->j:Lcom/avast/android/generic/ui/ae;

    .line 281
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 282
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 283
    sget v2, Lcom/avast/android/generic/z;->bw:I

    invoke-virtual {p0, v2}, Lcom/avast/android/generic/ui/PasswordDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 284
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/avast/android/generic/v;->C:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 285
    sget v0, Lcom/avast/android/generic/t;->av:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/PasswordTextView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->d:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    .line 286
    sget v0, Lcom/avast/android/generic/t;->aE:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->e:Landroid/widget/ImageView;

    .line 288
    invoke-direct {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->d()Landroid/text/TextWatcher;

    move-result-object v0

    .line 289
    iget-object v3, p0, Lcom/avast/android/generic/ui/PasswordDialog;->d:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-virtual {v3, v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 290
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->e:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    new-array v0, v5, [Landroid/text/InputFilter;

    .line 293
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v6

    .line 294
    iget-object v3, p0, Lcom/avast/android/generic/ui/PasswordDialog;->d:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-virtual {v3, v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 296
    sget v0, Lcom/avast/android/generic/t;->c:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->k:Landroid/widget/TextView;

    .line 297
    sget v0, Lcom/avast/android/generic/t;->ad:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->l:Landroid/widget/TextView;

    .line 298
    invoke-direct {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->a()V

    .line 300
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 301
    sget v0, Lcom/avast/android/generic/z;->i:I

    new-instance v2, Lcom/avast/android/generic/ui/w;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/ui/w;-><init>(Lcom/avast/android/generic/ui/PasswordDialog;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    sget v0, Lcom/avast/android/generic/z;->e:I

    new-instance v2, Lcom/avast/android/generic/ui/x;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/ui/x;-><init>(Lcom/avast/android/generic/ui/PasswordDialog;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 318
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 319
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 322
    new-instance v1, Lcom/avast/android/generic/ui/y;

    invoke-direct {v1, p0, v0}, Lcom/avast/android/generic/ui/y;-><init>(Lcom/avast/android/generic/ui/PasswordDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 344
    new-instance v1, Lcom/avast/android/generic/ui/aa;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/ui/aa;-><init>(Lcom/avast/android/generic/ui/PasswordDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 360
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 361
    invoke-virtual {p0, v5}, Lcom/avast/android/generic/ui/PasswordDialog;->setCancelable(Z)V

    .line 363
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 365
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 268
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->n:Landroid/support/v4/a/p;

    iget-object v1, p0, Lcom/avast/android/generic/ui/PasswordDialog;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/p;->a(Landroid/content/BroadcastReceiver;)V

    .line 269
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 256
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/PasswordDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 257
    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->h:Landroid/app/Activity;

    .line 260
    :cond_0
    instance-of v1, v0, Lcom/avast/android/generic/ui/PasswordActivity;

    if-eqz v1, :cond_1

    .line 261
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 263
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 235
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->d:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->d:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/PasswordDialog;->g:Z

    .line 239
    return-void
.end method
