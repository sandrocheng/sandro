.class final Lcom/keniu/security/sync/s;
.super Ljava/lang/Object;
.source "TCONST.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 894
    iput-object p1, p0, Lcom/keniu/security/sync/s;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 898
    iget-object v0, p0, Lcom/keniu/security/sync/s;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/util/af;->b(Landroid/content/Context;)V

    .line 899
    return-void
.end method
