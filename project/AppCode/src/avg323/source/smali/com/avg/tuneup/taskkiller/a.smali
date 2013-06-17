.class public Lcom/avg/tuneup/taskkiller/a;
.super Lcom/avg/tuneup/taskkiller/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/avg/tuneup/taskkiller/d;-><init>()V

    iput-boolean v0, p0, Lcom/avg/tuneup/taskkiller/a;->c:Z

    sput v0, Lcom/avg/tuneup/taskkiller/a;->a:I

    return-void
.end method


# virtual methods
.method protected F()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected G()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected H()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected a(Lcom/avg/tuneup/taskkiller/b;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    sget v0, Lcom/avg/a/e;->scroll_apps:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
