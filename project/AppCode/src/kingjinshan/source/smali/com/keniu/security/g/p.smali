.class final Lcom/keniu/security/g/p;
.super Ljava/lang/Object;
.source "UpdateUIHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/g/n;


# direct methods
.method constructor <init>(Lcom/keniu/security/g/n;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/keniu/security/g/p;->a:Lcom/keniu/security/g/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/keniu/security/g/p;->a:Lcom/keniu/security/g/n;

    invoke-static {v0}, Lcom/keniu/security/g/n;->a(Lcom/keniu/security/g/n;)Z

    .line 540
    iget-object v0, p0, Lcom/keniu/security/g/p;->a:Lcom/keniu/security/g/n;

    iget-object v0, v0, Lcom/keniu/security/g/n;->a:Lcom/keniu/security/f/t;

    invoke-virtual {v0}, Lcom/keniu/security/f/t;->f()V

    .line 542
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 543
    sget v1, Lcom/keniu/security/monitor/a;->q:I

    iget-object v2, p0, Lcom/keniu/security/g/p;->a:Lcom/keniu/security/g/n;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 545
    return-void
.end method
