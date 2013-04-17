.class final Lu;
.super Laa$a;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ls$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Ls$a;)V
    .locals 0

    iput-object p1, p0, Lu;->a:Ljava/lang/String;

    iput-object p2, p0, Lu;->b:Ls$a;

    invoke-direct {p0}, Laa$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .locals 4

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lu;->a:Ljava/lang/String;

    sget-object v3, Ls;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lu;->a:Ljava/lang/String;

    sget-object v3, Ls;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lu;->a:Ljava/lang/String;

    sget-object v3, Ls;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iget-object v1, p0, Lu;->b:Ls$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lu;->b:Ls$a;

    invoke-virtual {v1, v0}, Ls$a;->a(Z)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method
