.class final Lt;
.super Laa$a;


# instance fields
.field private synthetic a:Ls$a;

.field private synthetic b:Ls;


# direct methods
.method constructor <init>(Ls;Ls$a;)V
    .locals 0

    iput-object p1, p0, Lt;->b:Ls;

    iput-object p2, p0, Lt;->a:Ls$a;

    invoke-direct {p0}, Laa$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lt;->b:Ls;

    invoke-static {p1}, Ls;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lt;->a:Ls$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lt;->a:Ls$a;

    invoke-virtual {v1, v0}, Ls$a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
