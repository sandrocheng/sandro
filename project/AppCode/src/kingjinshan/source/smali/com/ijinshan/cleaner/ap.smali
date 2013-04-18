.class final Lcom/ijinshan/cleaner/ap;
.super Ljava/lang/Object;
.source "SDcardCleanerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/ijinshan/cleaner/SDcardCleanerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/ijinshan/cleaner/ap;->b:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    iput-object p2, p0, Lcom/ijinshan/cleaner/ap;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 718
    iget-object v0, p0, Lcom/ijinshan/cleaner/ap;->b:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const-string v1, "mg_rub_sdcard_clean_success"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/ijinshan/cleaner/ap;->b:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->d(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V

    .line 721
    new-instance v0, Lcom/ijinshan/cleaner/as;

    iget-object v1, p0, Lcom/ijinshan/cleaner/ap;->b:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-direct {v0, v1}, Lcom/ijinshan/cleaner/as;-><init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/as;->start()V

    .line 722
    iget-object v0, p0, Lcom/ijinshan/cleaner/ap;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/ijinshan/cleaner/ap;->b:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->c(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->e()V

    .line 725
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 726
    return-void
.end method
