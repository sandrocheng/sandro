.class public final Lco;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v1, v0, v2

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CALLLOG:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->BOOKMARK:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput v1, p0, Lco;->b:I

    iput v1, p0, Lco;->c:I

    iput v1, p0, Lco;->d:I

    return-void
.end method

.method public static b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget v0, p0, Lco;->b:I

    iget v1, p0, Lco;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lco;->d:I

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
