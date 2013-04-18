.class final Lcom/keniu/security/main/a/s;
.super Ljava/lang/Object;
.source "PrefBooleanCheckModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/keniu/security/main/a/q;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/a/q;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/keniu/security/main/a/s;->b:Lcom/keniu/security/main/a/q;

    iput-object p2, p0, Lcom/keniu/security/main/a/s;->a:Landroid/content/Context;

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

    .line 317
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->k(Z)V

    .line 318
    iget-object v0, p0, Lcom/keniu/security/main/a/s;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Z)V

    .line 319
    iget-object v0, p0, Lcom/keniu/security/main/a/s;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->b(Landroid/content/Context;)V

    .line 320
    return-void
.end method
