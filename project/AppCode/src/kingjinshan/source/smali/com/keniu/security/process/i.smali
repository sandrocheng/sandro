.class final Lcom/keniu/security/process/i;
.super Landroid/os/Handler;
.source "ProcessManagerActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/process/ProcessManagerActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/process/ProcessManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 458
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 497
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 460
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->q(Lcom/keniu/security/process/ProcessManagerActivity;)V

    .line 461
    iget-object v0, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->r(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    new-instance v1, Lcom/keniu/security/process/r;

    iget-object v2, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    iget-object v3, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    iget-object v3, v3, Lcom/keniu/security/process/ProcessManagerActivity;->d:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/keniu/security/process/r;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/keniu/security/process/ProcessManagerActivity;->a(Lcom/keniu/security/process/ProcessManagerActivity;Lcom/keniu/security/process/r;)Lcom/keniu/security/process/r;

    .line 464
    iget-object v0, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->s(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/keniu/security/process/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/process/r;->start()V

    goto :goto_0

    .line 467
    :pswitch_2
    iget-object v0, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->r(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->j(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/process/ProcessManagerActivity;->c(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/keniu/security/process/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 470
    iget-object v0, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    const v1, 0x7f0801e7

    invoke-virtual {v0, v1}, Lcom/keniu/security/process/ProcessManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 474
    iget-object v0, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->p(Lcom/keniu/security/process/ProcessManagerActivity;)V

    .line 475
    iget-object v0, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    iget-object v0, v0, Lcom/keniu/security/process/ProcessManagerActivity;->d:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 477
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-virtual {v1}, Lcom/keniu/security/process/ProcessManagerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ap.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-virtual {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keniu/security/f/ab;->a(Ljava/io/File;Landroid/content/Context;)Z

    .line 484
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->c()V

    goto/16 :goto_0

    .line 491
    :pswitch_3
    iget-object v0, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 492
    iget-object v0, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->p(Lcom/keniu/security/process/ProcessManagerActivity;)V

    goto/16 :goto_0

    .line 495
    :pswitch_4
    iget-object v0, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    iput-boolean v3, v0, Lcom/keniu/security/process/ProcessManagerActivity;->a:Z

    .line 496
    iget-object v0, p0, Lcom/keniu/security/process/i;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-virtual {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->finish()V

    goto/16 :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
