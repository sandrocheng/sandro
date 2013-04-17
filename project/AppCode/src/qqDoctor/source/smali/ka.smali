.class public final Lka;
.super Ljava/lang/Object;

# interfaces
.implements Ldv;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:J

.field private synthetic d:Ljt;


# direct methods
.method public constructor <init>(Ljt;Ljava/lang/String;Ljava/util/List;J)V
    .locals 0

    iput-object p1, p0, Lka;->d:Ljt;

    iput-object p2, p0, Lka;->a:Ljava/lang/String;

    iput-object p3, p0, Lka;->b:Ljava/util/List;

    iput-wide p4, p0, Lka;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lka;->d:Ljt;

    iget-object v0, v0, Ljt;->a:Lhs;

    iget-object v1, p0, Lka;->d:Ljt;

    iget-object v1, v1, Ljt;->g:Ljava/lang/String;

    const-string v2, "ctyName=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lka;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lka;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iget-object v3, p0, Lka;->d:Ljt;

    invoke-static {v2, v0}, Ljt;->a(Landroid/content/ContentValues;Lkw;)Landroid/content/ContentValues;

    const-string v0, "ctyName"

    iget-object v3, p0, Lka;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "expirationTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lka;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lka;->d:Ljt;

    iget-object v0, v0, Ljt;->a:Lhs;

    iget-object v3, p0, Lka;->d:Ljt;

    iget-object v3, v3, Ljt;->g:Ljava/lang/String;

    const-string v4, "id"

    invoke-virtual {v0, v3, v4, v2}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_0
    return-void
.end method
