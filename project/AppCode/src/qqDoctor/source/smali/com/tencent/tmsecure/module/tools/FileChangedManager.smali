.class public final Lcom/tencent/tmsecure/module/tools/FileChangedManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field public static final ACCESS:I = 0x1

.field public static final ALL_EVENTS:I = 0xfff

.field public static final ATTRIB:I = 0x4

.field public static final CLOSE_NOWRITE:I = 0x10

.field public static final CLOSE_WRITE:I = 0x8

.field public static final CREATE:I = 0x100

.field public static final DELETE:I = 0x200

.field public static final DELETE_SELF:I = 0x400

.field public static final MODIFY:I = 0x2

.field public static final MOVED_FROM:I = 0x40

.field public static final MOVED_TO:I = 0x80

.field public static final MOVE_SELF:I = 0x800

.field public static final OPEN:I = 0x20


# instance fields
.field private a:Lbyq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/String;ILcom/tencent/tmsecure/module/tools/IFileChangedListener;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/tools/FileChangedManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/FileChangedManager;->a:Lbyq;

    invoke-virtual {v0, p1, p2, p3}, Lbyq;->a(Ljava/lang/String;ILcom/tencent/tmsecure/module/tools/IFileChangedListener;)V

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbyq;

    invoke-direct {v0}, Lbyq;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/tools/FileChangedManager;->a:Lbyq;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/FileChangedManager;->a:Lbyq;

    invoke-virtual {v0, p1}, Lbyq;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/FileChangedManager;->a:Lbyq;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/tools/FileChangedManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final removeListener(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/tools/FileChangedManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/FileChangedManager;->a:Lbyq;

    invoke-virtual {v0, p1}, Lbyq;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
