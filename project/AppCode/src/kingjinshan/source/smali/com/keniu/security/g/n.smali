.class final Lcom/keniu/security/g/n;
.super Ljava/lang/Object;
.source "UpdateUIHelper.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# static fields
.field private static final d:I = 0x1


# instance fields
.field public a:Lcom/keniu/security/f/t;

.field final synthetic b:Lcom/keniu/security/g/a;

.field private c:Landroid/app/ProgressDialog;

.field private e:Landroid/os/Handler;

.field private f:Z


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/g/a;)V
    .locals 1
    .parameter

    .prologue
    .line 513
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/g/n;-><init>(Lcom/keniu/security/g/a;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/g/a;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/keniu/security/g/n;->b:Lcom/keniu/security/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    new-instance v0, Lcom/keniu/security/g/q;

    invoke-direct {v0, p0}, Lcom/keniu/security/g/q;-><init>(Lcom/keniu/security/g/n;)V

    iput-object v0, p0, Lcom/keniu/security/g/n;->e:Landroid/os/Handler;

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/g/n;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/g/n;)Z
    .locals 1
    .parameter

    .prologue
    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/g/n;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/keniu/security/g/n;)Z
    .locals 1
    .parameter

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/keniu/security/g/n;->f:Z

    return v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 564
    sget v0, Lcom/keniu/security/monitor/a;->q:I

    if-ne p1, v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/keniu/security/g/n;->a:Lcom/keniu/security/f/t;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/g/n;->a:Lcom/keniu/security/f/t;

    invoke-virtual {v0}, Lcom/keniu/security/f/t;->i()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 567
    iget-boolean v0, p0, Lcom/keniu/security/g/n;->f:Z

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/keniu/security/g/n;->e:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 572
    :cond_0
    return v2
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/keniu/security/g/n;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/g/n;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/keniu/security/g/n;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 560
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 518
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keniu/security/g/n;->c:Landroid/app/ProgressDialog;

    .line 519
    new-instance v0, Lcom/keniu/security/f/t;

    invoke-direct {v0, p2}, Lcom/keniu/security/f/t;-><init>(Z)V

    iput-object v0, p0, Lcom/keniu/security/g/n;->a:Lcom/keniu/security/f/t;

    .line 521
    iget-object v0, p0, Lcom/keniu/security/g/n;->b:Lcom/keniu/security/g/a;

    iget-object v0, v0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v1, 0x7f0b0433

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 522
    sget-object v1, Lcom/keniu/security/util/ae;->d:Lcom/keniu/security/util/ae;

    invoke-static {v0, v1}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/keniu/security/g/n;->c:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v1, p0, Lcom/keniu/security/g/n;->c:Landroid/app/ProgressDialog;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcom/keniu/security/g/n;->c:Landroid/app/ProgressDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/keniu/security/g/n;->b:Lcom/keniu/security/g/a;

    iget-object v2, v2, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v3, 0x7f0b021a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/keniu/security/g/o;

    invoke-direct {v3, p0}, Lcom/keniu/security/g/o;-><init>(Lcom/keniu/security/g/n;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 536
    iget-object v0, p0, Lcom/keniu/security/g/n;->c:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/keniu/security/g/p;

    invoke-direct {v1, p0}, Lcom/keniu/security/g/p;-><init>(Lcom/keniu/security/g/n;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 547
    iget-object v0, p0, Lcom/keniu/security/g/n;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 549
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 550
    sget v1, Lcom/keniu/security/monitor/a;->q:I

    const v2, 0x4fffffff

    invoke-virtual {v0, v1, p0, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 553
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/keniu/security/g/n;->a:Lcom/keniu/security/f/t;

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/ab;->a(Lcom/keniu/security/f/ae;)Z

    .line 555
    return-void
.end method
