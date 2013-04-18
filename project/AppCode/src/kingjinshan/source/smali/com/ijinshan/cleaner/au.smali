.class final Lcom/ijinshan/cleaner/au;
.super Ljava/lang/Object;
.source "SDcardCleanerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/ijinshan/cleaner/au;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/ijinshan/cleaner/au;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->g(Lcom/ijinshan/cleaner/SDcardCleanerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cleaner/a/c;

    .line 370
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 372
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 374
    const-string v2, "/mnt"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    const-string v3, "\n  "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bf4\u660e\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u8f6f\u4ef6\u5378\u8f7d\u540e\u7684\u6b8b\u4f59\u6587\u4ef6\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u4f4d\u7f6e\uff1a\n  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    new-instance v1, Lcom/keniu/security/util/aq;

    iget-object v2, p0, Lcom/ijinshan/cleaner/au;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v2, 0x7f0b0275

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/cleaner/au;->a:Lcom/ijinshan/cleaner/SDcardCleanerActivity;

    const v2, 0x7f0b0733

    invoke-virtual {v1, v2}, Lcom/ijinshan/cleaner/SDcardCleanerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 385
    :cond_0
    return-void
.end method
