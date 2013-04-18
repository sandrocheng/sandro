.class final Lcom/keniu/security/software/t;
.super Ljava/lang/Object;
.source "SoftwareManager2.java"

# interfaces
.implements Lcom/keniu/security/software/ag;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/SoftwareManager2;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/SoftwareManager2;)V
    .locals 0
    .parameter

    .prologue
    .line 864
    iput-object p1, p0, Lcom/keniu/security/software/t;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 867
    iget-object v0, p0, Lcom/keniu/security/software/t;->a:Lcom/keniu/security/software/SoftwareManager2;

    iget-object v1, p0, Lcom/keniu/security/software/t;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v1}, Lcom/keniu/security/software/SoftwareManager2;->c(Lcom/keniu/security/software/SoftwareManager2;)I

    invoke-static {v0, p1}, Lcom/keniu/security/software/SoftwareManager2;->a(Lcom/keniu/security/software/SoftwareManager2;Ljava/lang/String;)V

    .line 868
    return-void
.end method
