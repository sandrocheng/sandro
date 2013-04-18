.class final Lcom/keniu/security/mydb/opt/f;
.super Ljava/lang/Object;
.source "DBModel.java"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field final synthetic c:Lcom/keniu/security/mydb/opt/c;


# direct methods
.method public constructor <init>(Lcom/keniu/security/mydb/opt/c;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/keniu/security/mydb/opt/f;->c:Lcom/keniu/security/mydb/opt/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/keniu/security/mydb/opt/f;->a:Ljava/lang/String;

    .line 46
    iput p3, p0, Lcom/keniu/security/mydb/opt/f;->b:I

    .line 47
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[ number:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keniu/security/mydb/opt/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", cid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/mydb/opt/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
