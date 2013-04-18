.class final Lcom/keniu/security/mydb/opt/e;
.super Ljava/lang/Object;
.source "DBModel.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:J

.field d:I

.field e:J

.field f:Ljava/lang/String;

.field g:J

.field final synthetic h:Lcom/keniu/security/mydb/opt/c;


# direct methods
.method constructor <init>(Lcom/keniu/security/mydb/opt/c;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 4
    iput-object p1, p0, Lcom/keniu/security/mydb/opt/e;->h:Lcom/keniu/security/mydb/opt/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/mydb/opt/e;->a:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/mydb/opt/e;->b:Ljava/lang/String;

    .line 7
    iput-wide v1, p0, Lcom/keniu/security/mydb/opt/e;->c:J

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/mydb/opt/e;->d:I

    .line 9
    iput-wide v1, p0, Lcom/keniu/security/mydb/opt/e;->e:J

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/mydb/opt/e;->f:Ljava/lang/String;

    .line 11
    iput-wide v1, p0, Lcom/keniu/security/mydb/opt/e;->g:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "{ headerStr:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keniu/security/mydb/opt/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/mydb/opt/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/keniu/security/mydb/opt/e;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", content_length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/mydb/opt/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", base_value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/keniu/security/mydb/opt/e;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", checkStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/mydb/opt/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", base_addr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/keniu/security/mydb/opt/e;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
