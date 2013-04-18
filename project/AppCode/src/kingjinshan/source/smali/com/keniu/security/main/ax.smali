.class final Lcom/keniu/security/main/ax;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/aw;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/aw;)V
    .locals 0
    .parameter

    .prologue
    .line 2101
    iput-object p1, p0, Lcom/keniu/security/main/ax;->a:Lcom/keniu/security/main/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/keniu/security/main/ax;->a:Lcom/keniu/security/main/aw;

    iget-object v0, v0, Lcom/keniu/security/main/aw;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/util/af;->b(Landroid/content/Context;)V

    .line 2110
    return-void
.end method
