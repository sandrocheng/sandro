.class final Lcom/keniu/security/software/w;
.super Ljava/lang/Object;
.source "SoftwareManager2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/o;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/keniu/security/software/SoftwareManager2;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/SoftwareManager2;Lcom/keniu/security/software/o;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 896
    iput-object p1, p0, Lcom/keniu/security/software/w;->c:Lcom/keniu/security/software/SoftwareManager2;

    iput-object p2, p0, Lcom/keniu/security/software/w;->a:Lcom/keniu/security/software/o;

    iput-object p3, p0, Lcom/keniu/security/software/w;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 899
    iget-object v0, p0, Lcom/keniu/security/software/w;->a:Lcom/keniu/security/software/o;

    invoke-virtual {v0}, Lcom/keniu/security/software/o;->a()Ljava/lang/String;

    move-result-object v0

    .line 900
    iget-object v1, p0, Lcom/keniu/security/software/w;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/software/ag;

    invoke-interface {p0, v0}, Lcom/keniu/security/software/ag;->a(Ljava/lang/String;)V

    .line 901
    return-void
.end method
