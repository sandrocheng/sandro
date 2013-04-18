.class final Lcom/ijinshan/cleaner/w;
.super Ljava/lang/Object;
.source "HistoryCleanerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/ijinshan/cleaner/HistoryCleanerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/HistoryCleanerActivity;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/ijinshan/cleaner/w;->b:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    iput-object p2, p0, Lcom/ijinshan/cleaner/w;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/ijinshan/cleaner/w;->b:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    const-string v1, "mg_rub_history_clean_success"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/ijinshan/cleaner/w;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/ijinshan/cleaner/w;->b:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->a(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->e()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/w;->b:Lcom/ijinshan/cleaner/HistoryCleanerActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/HistoryCleanerActivity;->b(Lcom/ijinshan/cleaner/HistoryCleanerActivity;)V

    .line 192
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 193
    return-void
.end method
