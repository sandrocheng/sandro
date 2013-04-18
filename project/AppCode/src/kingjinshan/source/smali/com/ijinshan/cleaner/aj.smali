.class final Lcom/ijinshan/cleaner/aj;
.super Ljava/lang/Object;
.source "MonitorUninstallActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/ijinshan/cleaner/MonitorUninstallActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/ijinshan/cleaner/aj;->b:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    iput-object p2, p0, Lcom/ijinshan/cleaner/aj;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/ijinshan/cleaner/aj;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 317
    if-eqz p2, :cond_0

    .line 318
    iget-object v1, p0, Lcom/ijinshan/cleaner/aj;->a:Landroid/widget/EditText;

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 324
    :goto_0
    iget-object v1, p0, Lcom/ijinshan/cleaner/aj;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 325
    return-void

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/ijinshan/cleaner/aj;->a:Landroid/widget/EditText;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method
