.class public final Lju;
.super Ljava/lang/Object;

# interfaces
.implements Ldv;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Ljt;


# direct methods
.method public constructor <init>(Ljt;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lju;->c:Ljt;

    iput-object p2, p0, Lju;->a:Ljava/lang/String;

    iput-object p3, p0, Lju;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lju;->c:Ljt;

    iget-object v0, v0, Ljt;->a:Lhs;

    iget-object v1, p0, Lju;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhs;->c(Ljava/lang/String;)I

    iget-object v0, p0, Lju;->b:Ljava/util/List;

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

    iget-object v3, p0, Lju;->c:Ljt;

    invoke-static {v2, v0}, Ljt;->a(Landroid/content/ContentValues;Lkw;)Landroid/content/ContentValues;

    iget-object v0, p0, Lju;->c:Ljt;

    iget-object v0, v0, Ljt;->a:Lhs;

    iget-object v3, p0, Lju;->a:Ljava/lang/String;

    const-string v4, "id"

    invoke-virtual {v0, v3, v4, v2}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_0
    return-void
.end method
