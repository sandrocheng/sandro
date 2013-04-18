.class final Lcom/keniu/security/g/b;
.super Ljava/lang/Object;
.source "UpdateUIHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/f/t;

.field final synthetic b:Lcom/keniu/security/g/a;


# direct methods
.method constructor <init>(Lcom/keniu/security/g/a;Lcom/keniu/security/f/t;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/keniu/security/g/b;->b:Lcom/keniu/security/g/a;

    iput-object p2, p0, Lcom/keniu/security/g/b;->a:Lcom/keniu/security/f/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 200
    new-instance v0, Lcom/keniu/security/g/r;

    iget-object v1, p0, Lcom/keniu/security/g/b;->b:Lcom/keniu/security/g/a;

    invoke-direct {v0, v1}, Lcom/keniu/security/g/r;-><init>(Lcom/keniu/security/g/a;)V

    .line 201
    iget-object v1, p0, Lcom/keniu/security/g/b;->a:Lcom/keniu/security/f/t;

    invoke-virtual {v0, v1}, Lcom/keniu/security/g/r;->a(Lcom/keniu/security/f/t;)V

    .line 202
    return-void
.end method
