.class public abstract Lcom/avast/android/generic/service/ForegroundService;
.super Landroid/app/Service;
.source "ForegroundService.java"


# static fields
.field private static final a:[Ljava/lang/Class;

.field private static final b:[Ljava/lang/Class;

.field private static final c:[Ljava/lang/Class;


# instance fields
.field private d:[Ljava/lang/Object;

.field private e:[Ljava/lang/Object;

.field private f:[Ljava/lang/Object;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/avast/android/generic/service/ForegroundService;->a:[Ljava/lang/Class;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avast/android/generic/service/ForegroundService;->b:[Ljava/lang/Class;

    .line 29
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/avast/android/generic/service/ForegroundService;->c:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/avast/android/generic/service/ForegroundService;->d:[Ljava/lang/Object;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/avast/android/generic/service/ForegroundService;->e:[Ljava/lang/Object;

    .line 38
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/avast/android/generic/service/ForegroundService;->f:[Ljava/lang/Object;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/android/generic/service/ForegroundService;->g:I

    return-void
.end method
