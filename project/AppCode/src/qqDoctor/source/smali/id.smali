.class public final Lid;
.super Ljava/lang/Object;

# interfaces
.implements Ldv;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Lib;


# direct methods
.method public constructor <init>(Lib;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lid;->c:Lib;

    iput-object p2, p0, Lid;->a:Ljava/util/List;

    iput-object p3, p0, Lid;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lid;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iget-object v5, p0, Lid;->c:Lib;

    invoke-static {v4, v0}, Lib;->a(Landroid/content/ContentValues;Llj;)Landroid/content/ContentValues;

    const-string v5, "mFileSrcPath=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    iget-object v0, p0, Lid;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v2

    iget-object v0, p0, Lid;->c:Lib;

    iget-object v0, v0, Lib;->a:Lhx;

    const-string v7, "file_safe_file_info"

    invoke-virtual {v0, v7, v4, v5, v6}, Lhx;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
