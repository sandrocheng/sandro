.class public Lcom/avg/ui/general/b/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Z

.field public e:Z

.field public f:I

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/avg/ui/general/b/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/avg/ui/general/b/c;->b:Ljava/lang/String;

    iput p5, p0, Lcom/avg/ui/general/b/c;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/avg/ui/general/b/c;->h:I

    iput p2, p0, Lcom/avg/ui/general/b/c;->f:I

    iput-boolean p4, p0, Lcom/avg/ui/general/b/c;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/avg/ui/general/b/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/avg/ui/general/b/c;->b:Ljava/lang/String;

    iput p3, p0, Lcom/avg/ui/general/b/c;->c:I

    iput v0, p0, Lcom/avg/ui/general/b/c;->h:I

    iput v0, p0, Lcom/avg/ui/general/b/c;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avg/ui/general/b/c;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/avg/ui/general/b/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/avg/ui/general/b/c;->b:Ljava/lang/String;

    iput p3, p0, Lcom/avg/ui/general/b/c;->c:I

    iput p4, p0, Lcom/avg/ui/general/b/c;->h:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/avg/ui/general/b/c;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avg/ui/general/b/c;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/avg/ui/general/b/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/avg/ui/general/b/c;->b:Ljava/lang/String;

    iput p3, p0, Lcom/avg/ui/general/b/c;->c:I

    iput-boolean p4, p0, Lcom/avg/ui/general/b/c;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avg/ui/general/b/c;->g:Z

    iput v1, p0, Lcom/avg/ui/general/b/c;->h:I

    iput v1, p0, Lcom/avg/ui/general/b/c;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avg/ui/general/b/c;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/avg/ui/general/b/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/avg/ui/general/b/c;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/avg/ui/general/b/c;)I
    .locals 1

    iget v0, p0, Lcom/avg/ui/general/b/c;->h:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/general/b/c;->b:Ljava/lang/String;

    return-void
.end method
