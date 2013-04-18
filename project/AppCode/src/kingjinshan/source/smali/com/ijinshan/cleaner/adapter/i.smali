.class final Lcom/ijinshan/cleaner/adapter/i;
.super Ljava/lang/Object;
.source "SDcardActivityAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/ijinshan/cleaner/a/c;

.field final synthetic c:Lcom/ijinshan/cleaner/adapter/f;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/adapter/f;Landroid/widget/CheckBox;Lcom/ijinshan/cleaner/a/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/ijinshan/cleaner/adapter/i;->c:Lcom/ijinshan/cleaner/adapter/f;

    iput-object p2, p0, Lcom/ijinshan/cleaner/adapter/i;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/ijinshan/cleaner/adapter/i;->b:Lcom/ijinshan/cleaner/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 156
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/i;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/ijinshan/cleaner/adapter/i;->b:Lcom/ijinshan/cleaner/a/c;

    invoke-virtual {v0, v1}, Lcom/ijinshan/cleaner/a/c;->a(Z)V

    .line 158
    return-void
.end method
