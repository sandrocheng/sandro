.class final Lcom/jxphone/mosecurity/d/o;
.super Ljava/lang/Object;
.source "ProgressDialogCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/d/n;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/d/n;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/jxphone/mosecurity/d/o;->a:Lcom/jxphone/mosecurity/d/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/o;->a:Lcom/jxphone/mosecurity/d/n;

    invoke-static {v0}, Lcom/jxphone/mosecurity/d/n;->a(Lcom/jxphone/mosecurity/d/n;)Z

    .line 44
    return-void
.end method
