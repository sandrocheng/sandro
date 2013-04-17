.class final Lhj;
.super Ljava/lang/Object;

# interfaces
.implements Ldv;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lhi;


# direct methods
.method constructor <init>(Lhi;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lhj;->b:Lhi;

    iput-object p2, p0, Lhj;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lhj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lky;

    iget-object v2, p0, Lhj;->b:Lhi;

    invoke-static {v2}, Lhi;->a(Lhi;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lf;->a(Lky;IZ)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v2, p0, Lhj;->b:Lhi;

    invoke-static {v2}, Lhi;->c(Lhi;)Lhs;

    move-result-object v2

    iget-object v3, p0, Lhj;->b:Lhi;

    invoke-static {v3}, Lhi;->b(Lhi;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lhs;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_0
    return-void
.end method
