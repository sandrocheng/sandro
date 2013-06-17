.class public abstract Lcom/antivirus/ui/callmessagefilter/i;
.super Lcom/antivirus/ui/callmessagefilter/d;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:Ljava/util/Date;

.field private b:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/x;JLjava/lang/String;Ljava/util/Date;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/antivirus/ui/callmessagefilter/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/x;JLjava/lang/String;)V

    iput-object p8, p0, Lcom/antivirus/ui/callmessagefilter/i;->a:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public a(Lcom/antivirus/ui/callmessagefilter/i;)I
    .locals 2

    invoke-virtual {p1}, Lcom/antivirus/ui/callmessagefilter/i;->i()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/i;->a:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/antivirus/ui/callmessagefilter/i;->b:Z

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/antivirus/ui/callmessagefilter/i;

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/i;->a(Lcom/antivirus/ui/callmessagefilter/i;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/antivirus/ui/callmessagefilter/i;

    if-eqz v1, :cond_0

    :try_start_0
    check-cast p1, Lcom/antivirus/ui/callmessagefilter/i;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/i;->i()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lcom/antivirus/ui/callmessagefilter/i;->i()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public i()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/i;->a:Ljava/util/Date;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/ui/callmessagefilter/i;->b:Z

    return v0
.end method
