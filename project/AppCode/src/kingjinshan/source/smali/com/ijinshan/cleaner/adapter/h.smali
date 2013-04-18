.class final Lcom/ijinshan/cleaner/adapter/h;
.super Ljava/lang/Object;
.source "SDcardActivityAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/a/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ijinshan/cleaner/adapter/f;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/adapter/f;Lcom/ijinshan/cleaner/a/c;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/ijinshan/cleaner/adapter/h;->c:Lcom/ijinshan/cleaner/adapter/f;

    iput-object p2, p0, Lcom/ijinshan/cleaner/adapter/h;->a:Lcom/ijinshan/cleaner/a/c;

    iput-object p3, p0, Lcom/ijinshan/cleaner/adapter/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 109
    check-cast p1, Landroid/widget/CheckBox;

    .line 110
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/h;->a:Lcom/ijinshan/cleaner/a/c;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/c;->e()J

    move-result-wide v0

    const-wide/32 v2, 0xa00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/h;->c:Lcom/ijinshan/cleaner/adapter/f;

    iget-object v1, p0, Lcom/ijinshan/cleaner/adapter/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ijinshan/cleaner/adapter/h;->a:Lcom/ijinshan/cleaner/a/c;

    invoke-static {v0, v1, p1, v2}, Lcom/ijinshan/cleaner/adapter/f;->a(Lcom/ijinshan/cleaner/adapter/f;Ljava/lang/String;Landroid/widget/CheckBox;Lcom/ijinshan/cleaner/a/c;)V

    .line 126
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/h;->a:Lcom/ijinshan/cleaner/a/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ijinshan/cleaner/a/c;->a(Z)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/h;->a:Lcom/ijinshan/cleaner/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ijinshan/cleaner/a/c;->a(Z)V

    goto :goto_0
.end method
