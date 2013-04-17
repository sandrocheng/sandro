.class public final Lae;
.super Lad;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lad;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    invoke-super {p0}, Lad;->a()V

    const-string v0, "phonetype"

    iput-object v0, p0, Lae;->b:Ljava/lang/String;

    return-void
.end method
